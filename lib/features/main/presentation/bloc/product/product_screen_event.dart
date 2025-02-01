part of 'product_screen_bloc.dart';


abstract class ProductScreenEvent {}

class ProductScreenInitialEvent extends ProductScreenEvent{
  String? category;
  ProductScreenInitialEvent({required this.category});
}


class ProductScreenFilterEvent extends ProductScreenEvent{
  String query;
  ProductScreenFilterEvent({required this.query});
}

class OnClickFavouriteEvent extends ProductScreenEvent{
  String id;
  int currentIndex;
  OnClickFavouriteEvent({required this.id, required this.currentIndex});
}

