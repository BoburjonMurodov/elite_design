part of 'main_screen_bloc.dart';



class MainScreenEvent {}


class MainScreenBlocInitial extends MainScreenEvent {}
class OnChangeTab extends MainScreenEvent {
  int index;

  OnChangeTab(this.index);
}


class GetCartItems extends MainScreenEvent {}
class GetFavouriteItems extends MainScreenEvent {}
class UpdateProductsAndCategories extends MainScreenEvent {}


class OnChangeVozvrat extends MainScreenEvent {
  bool value;
  OnChangeVozvrat(this.value);
}


class OnFilterCategories extends MainScreenEvent {
  String query;
  OnFilterCategories(this.query);
}

