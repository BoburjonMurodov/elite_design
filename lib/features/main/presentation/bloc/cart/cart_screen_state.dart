part of 'cart_screen_bloc.dart';

class CartScreenState {
  List<ProductData> products;
  String totalPrice;
  CartState status;
  String? error;
  Map<String, ProductItem> indexes;
  bool debug;

  CartScreenState(
      {required this.products,
      required this.totalPrice,
      required this.error,
      required this.indexes,
      required this.status,
      this.debug = false
      });

  CartScreenState copyWith(
      {List<ProductData>? products,
      String? totalPrice,
      String? error,
      Map<String, ProductItem>? indexes,
        bool? debug,
      required CartState status}) {
    return CartScreenState(
      products: products ?? this.products,
      totalPrice: totalPrice ?? this.totalPrice,
      error: error,
      indexes: indexes ?? this.indexes,
      debug: debug ?? this.debug,
      status: status,
    );
  }
}

enum CartState { INITIAL, LOADING, SUCCESS, ERROR }
