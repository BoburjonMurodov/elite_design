import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';

import '../../../data/model/data/product_data/product_data.dart';
import '../../../domain/repository/product_repository.dart';

part 'product_screen_event.dart';
part 'product_screen_state.dart';

class ProductScreenBloc extends Bloc<ProductScreenEvent, ProductScreenState> {
  ProductScreenBloc() : super(ProductScreenState(products: List.empty())) {
    ProductRepository repository = ProductRepositoryImpl();
    List<ProductData> products = List.empty();
    on<ProductScreenEvent>((event, emit) {});

    on<ProductScreenInitialEvent>((event, emit) async {
      if (event.category == null) {
        products = await repository.getAllProducts();
        log('length: ${products.length}');
        emit(state.copyWith(products: products));
      } else {
        products = await repository.getProductsByCategory(event.category!);
        emit(state.copyWith(products: products));
      }
    });

    on<ProductScreenFilterEvent>((event, emit) {
      log('${event.query} all products length: ${products.length}');
      final filteredList = products.where((it) {
        return it.tovar.toLowerCase().contains(event.query.toLowerCase());
      }).toList();

      emit(state.copyWith(products: filteredList));
    });

    on<OnClickFavouriteEvent>((event, emit) async {
      log('${event.id} clicked');
      final updated = await repository.updateFavouriteStatus(event.id);
      products[event.currentIndex] = updated;
      emit(state.copyWith(products: products));
      log('--ended--');
    });
  }
}
