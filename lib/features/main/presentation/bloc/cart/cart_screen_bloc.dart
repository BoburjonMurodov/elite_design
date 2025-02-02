import 'package:bloc/bloc.dart';
import 'package:elite_design/core/local_storage/hive_helper.dart';
import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';
import 'package:elite_design/features/main/data/model/request/check_products_request.dart';
import 'package:elite_design/features/main/data/model/response/product/product_list_response.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';
import 'package:elite_design/features/main/data/source/product_remote_source.dart';
import 'package:elite_design/features/main/domain/repository/product_repository.dart';
import 'package:elite_design/features/main/presentation/bloc/bottomsheet/bottom_sheet_bloc.dart';

part 'cart_screen_event.dart';
part 'cart_screen_state.dart';

class CartScreenBloc extends Bloc<CartScreenEvent, CartScreenState> {
  CartScreenBloc()
      : super(CartScreenState(
            products: List.empty(),
            totalPrice: '0',
            status: CartState.INITIAL,
            error: null,
            indexes: {})) {
    ProductRepository repository = ProductRepositoryImpl();
    on<CartScreenEvent>((event, emit) {});

    on<CartScreenInitial>((event, emit) async {
      final result = await repository.getProductsInCart();
      emit(state.copyWith(products: result, status: CartState.INITIAL));
      emit(state.copyWith(
          totalPrice: calculateTotalPrice(), status: CartState.INITIAL));
    });

    on<OnClickDelete>((event, emit) async {
      if (state.status == CartState.LOADING) {
        return;
      }

      await repository
          .deleteProductFromCart(state.products[event.index].tovarId);
      add(CartScreenInitial());
    });

    on<OnClickPlus>((event, emit) async {
      if (state.status == CartState.LOADING) {
        return;
      }

      final product = state.products[event.index];
      if (product.count < product.ostatka || state.debug) {
        await repository.updateProductCount(
            product.tovarId, product.count + 1, product.payment);
        add(CartScreenInitial());
      }
    });

    on<OnClickMinus>((event, emit) async {
      if (state.status == CartState.LOADING) {
        return;
      }


      final product = state.products[event.index];
      if (product.count > 1) {
        await repository.updateProductCount(
            product.tovarId, product.count - 1, product.payment);
        add(CartScreenInitial());
      }
    });

    on<OnClickOrderButton>((event, emit) async {
      if (state.status == CartState.LOADING) {
        return;
      }


      emit(state.copyWith(status: CartState.LOADING));
      final id = await HiveHelper().getSkladId();
      final products =
          state.products.map((e) => CheckProductItem(e.tovarId)).toList();
      final items = CheckProductsRequest(id: id!, products: products);
      final result = await ProductRemoteSourceImpl().checkProducts(items);

      if (result.isSuccess) {
        final temp = result.successValue!;

        Map<String, ProductItem> indexes = {};

        for (int i = 0; i < temp.length; i++) {
          if (temp[i].ostatka < state.products[i].count) {
            indexes[state.products[i].tovarId] = temp[i];
          }
        }

        if (indexes.isNotEmpty) {
          emit(state.copyWith(
              indexes: indexes,
              error: "Mahsulotlar yetarli emas!",
              status: CartState.ERROR));
        } else {
          emit(state.copyWith(indexes: indexes,status: CartState.SUCCESS));
          emit(state.copyWith(status: CartState.INITIAL));
        }
      } else {
        emit(state.copyWith(
            error: result.failureValue.toString(), status: CartState.ERROR));
      }
    });

    on<OnSwitchValueChange>((event, emit) {
      if (state.status == CartState.LOADING) {
        return;
      }

      emit(state.copyWith(debug: event.value, status: CartState.INITIAL));
    });
  }

  String calculateTotalPrice() {
    var total = 0;

    for (var item in state.products) {
      if (Payment.RETAIL.name == item.payment) {
        total += item.count * item.sena;
      } else {
        total += item.count * item.optomNarx;
      }
    }

    return total.toString();
  }
}
