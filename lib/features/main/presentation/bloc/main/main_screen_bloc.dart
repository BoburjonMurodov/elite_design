import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elite_design/core/local_storage/hive_helper.dart';
import 'package:elite_design/features/main/data/model/data/category_item/category_item.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';
import 'package:elite_design/features/main/domain/repository/product_repository.dart';

import '../../../data/model/data/product_data/product_data.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';

class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc()
      : super(MainScreenState(
            currentTab: 0,
            loginName: '',
            cartItems: List.empty(),
            favouriteItems: List.empty(),
            categories: List.empty(),
            status: MainScreenStatus.INITIAL,
            isVazvrat: false)) {
    HiveHelper hiveHelper = HiveHelper();
    ProductRepository repository = ProductRepositoryImpl();
    List<CategoryItem> categories = [];

    on<MainScreenEvent>((event, emit) {});

    on<MainScreenBlocInitial>((event, emit) async {
      final login = await hiveHelper.getLogin();
      final isVazvrat = await hiveHelper.getVazvrat();
      emit(state.copyWith(
          loginName: login,
          status: MainScreenStatus.INITIAL,
          isVazvrat: isVazvrat));
    });

    on<OnChangeTab>((event, emit) {
      emit(state.copyWith(
          currentTab: event.index, status: MainScreenStatus.INITIAL));
    });

    on<GetCartItems>((event, emit) async {
      log('GetCartItems');
      final list = await repository.getProductsInCart();
      emit(state.copyWith(cartItems: list, status: MainScreenStatus.INITIAL));
    });

    on<GetFavouriteItems>((event, emit) async {
      final favourite = await repository.getFavouriteProducts();
      emit(state.copyWith(
          favouriteItems: favourite, status: MainScreenStatus.INITIAL));
    });

    on<UpdateProductsAndCategories>((event, emit) async {
      emit(state.copyWith(status: MainScreenStatus.LOADING));

      final result = await repository.getCategories();
      if (result.isSuccess) {
        categories = result.successValue!;
        emit(state.copyWith(
            categories: result.successValue, status: MainScreenStatus.INITIAL));
      } else {
        emit(state.copyWith(
            error: result.failureValue.toString(),
            status: MainScreenStatus.ERROR));
        emit(state.copyWith(status: MainScreenStatus.INITIAL));
      }

      final products = await repository.getProductsFromRemote();
      if (products.isSuccess) {
        emit(state.copyWith(status: MainScreenStatus.SUCCESS));
      } else {
        emit(state.copyWith(
            error: products.failureValue.toString(),
            status: MainScreenStatus.ERROR));
        emit(state.copyWith(status: MainScreenStatus.INITIAL));
      }
    });

    on<OnChangeVozvrat>((event, emit) async {
      emit(state.copyWith(status: state.status, isVazvrat: event.value));
    });

    on<OnFilterCategories>((event, emit) {
      final filtered = categories.where((element) {
        return element.category
            .toLowerCase()
            .contains(event.query.toLowerCase());
      }).toList();
      emit(state.copyWith(
          categories: filtered, status: MainScreenStatus.INITIAL));
    });
  }
}
