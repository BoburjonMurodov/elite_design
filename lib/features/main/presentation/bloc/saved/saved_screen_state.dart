part of 'saved_screen_bloc.dart';


class SavedScreenState {
  List<ProductData> products;
  SavedScreenState({required this.products});

  copyWith({List<ProductData>? products}) {
    return SavedScreenState(products: products ?? this.products);
  }


}
