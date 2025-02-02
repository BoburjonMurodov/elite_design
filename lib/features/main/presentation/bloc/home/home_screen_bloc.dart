import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elite_design/features/main/data/model/data/category_item/category_item.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';

import '../../../domain/repository/product_repository.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc()
      : super(HomeScreenState(
            categories: List.empty(),
            error: null,
            status: HomeScreenStatus.INITIAL)) {
    ProductRepository repository = ProductRepositoryImpl();
    on<HomeScreenEvent>((event, emit) {});
    List<CategoryItem> list = List<CategoryItem>.empty();

    on<HomeScreenInitial>((event, emit) async {
      emit(state.copyWith(status: HomeScreenStatus.LOADING));
      emit(state.copyWith(status: HomeScreenStatus.INITIAL));

      final result = await repository.getCategories();

      if (result.isSuccess) {
        list = result.successValue!;
        emit(state.copyWith(categories: result.successValue, status: HomeScreenStatus.SUCCESS));
      } else {
        emit(state.copyWith(status: HomeScreenStatus.ERROR));
      }

      await repository.getProductsFromRemote();

      if (result.isSuccess) {
        emit(state.copyWith(status: HomeScreenStatus.PRODUCTS));
      } else {
        emit(state.copyWith(
            error: result.failureValue.toString(),
            status: HomeScreenStatus.ERROR));
      }
      emit(state.copyWith(status: HomeScreenStatus.INITIAL));
    });

    on<FilterCategories>((event, emit) async {
      final filteredList = list.where((category) {
        return category.category
            .toLowerCase()
            .contains(event.query.toLowerCase());
      }).toList();

      emit(state.copyWith(categories: filteredList));
    });
  }
}
