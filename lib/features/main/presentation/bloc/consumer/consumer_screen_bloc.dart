import 'package:bloc/bloc.dart';
import 'package:elite_design/core/local_storage/hive_helper.dart';
import 'package:elite_design/features/main/data/model/data/client/client_item.dart';
import 'package:elite_design/features/main/data/model/request/order/order_request.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';
import 'package:elite_design/features/main/domain/repository/client_repository.dart';
import 'package:elite_design/features/main/domain/repository/product_repository.dart';
import 'package:elite_design/features/main/presentation/bloc/bottomsheet/bottom_sheet_bloc.dart';

import '../../../data/repository_impl/client_repository_impl.dart';

part 'consumer_screen_event.dart';
part 'consumer_screen_state.dart';

class ConsumerScreenBloc
    extends Bloc<ConsumerScreenEvent, ConsumerScreenState> {
  ConsumerScreenBloc()
      : super(ConsumerScreenState(
            status: ConsumerStatus.INITIAL, clients: [], extended: [])) {
    HiveHelper hiveHelper = HiveHelper();
    ClientRepository repository = ClientRepositoryImpl();
    ProductRepository productRepository = ProductRepositoryImpl();
    List<ClientItem> clients = [];

    List<ProductRequest> products = List.empty();
    String clientId = '';

    on<ConsumerScreenEvent>((event, emit) {});

    on<ConsumerScreenInitial>((event, emit) async {
      if (event.products != null) {
        products = event.products!;
      }

      emit(state.copyWith(status: ConsumerStatus.LOADING));
      final result = await repository.getClients();
      if (result.isSuccess) {
        clients = result.successValue!;
        emit(state.copyWith(status: ConsumerStatus.INITIAL, clients: clients));
        emit(state.copyWith(
            status: ConsumerStatus.INITIAL,
            clients: clients,
            extended: List.generate(clients.length, (index) => false)));
      } else {
        emit(state.copyWith(
            status: ConsumerStatus.ERROR,
            error: result.failureValue.toString()));
      }
    });

    on<FilterConsumerScreen>((event, emit) {
      final filteredClients = clients.where((client) {
        return client.client.toLowerCase().contains(event.query.toLowerCase());
      });

      emit(state.copyWith(
          status: ConsumerStatus.INITIAL, clients: filteredClients.toList()));
    });

    on<OnLongClickConsumer>((event, emit) {
      final extended = List.of(state.extended);
      extended[event.index] = !extended[event.index];
      emit(state.copyWith(extended: extended, status: ConsumerStatus.INITIAL));
    });

    on<OnClickOpenBottomSheet>((event, emit) async {
      clientId = event.clientID;
      emit(state.copyWith(status: ConsumerStatus.BOTTOMSHEET));
      // emit(state.copyWith(status: ConsumerStatus.ERROR));
    });

    on<OnClickConfirmOrder>((event, emit) async {
      if (state.status == ConsumerStatus.LOADING_ORDER) {
        return;
      }
      emit(state.copyWith(status: ConsumerStatus.LOADING_ORDER));

      final login = await hiveHelper.getLogin();
      final isVazvrat = await hiveHelper.getVazvrat();
      var total = 0;
      var summa = 0;

      //SUMMA - JAMI NARX
      //TOTAL - OPTOM NARXI

      for (var product in products) {
        total += product.price;
        final productData = await productRepository.getProductById(product.pid);

        if (productData.payment == Payment.WHOLESALE.name) {
          summa += product.summa.toInt();
        } else {
          summa += product.price;
        }
      }

      final order = OrderRequest(
          comment: event.comment,
          summa: summa,
          total: total,
          skitka: summa - total,
          clientId: clientId,
          login: login!,
          orderType: true,
          products: products,
          type: 1,
          isVazvrat: isVazvrat);

      final result = await productRepository.order(order);

      if (result.isSuccess) {
        await productRepository.clearCart();
        emit(state.copyWith(status: ConsumerStatus.SUCCESS));
      } else {
        emit(state.copyWith(
            status: ConsumerStatus.ERROR,
            error: result.failureValue.toString()));
      }
    });
  }
}
