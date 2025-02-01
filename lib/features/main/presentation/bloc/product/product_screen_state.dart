part of 'product_screen_bloc.dart';

class ProductScreenState {
  List<ProductData> products;

  ProductScreenState({required this.products});

  copyWith({List<ProductData>? products}) {
    return ProductScreenState(products: products ?? this.products);
  }
}
