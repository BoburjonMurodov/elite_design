part of 'home_screen_bloc.dart';

class HomeScreenState {
  List<CategoryItem> categories;
  HomeScreenStatus status;
  String? error;

  HomeScreenState(
      {required this.categories, required this.error, required this.status});

  copyWith(
      {List<CategoryItem>? categories,
      String? error,
      HomeScreenStatus? status}) {
    return HomeScreenState(
        categories: categories ?? this.categories,
        error: error,
        status: status ?? this.status);
  }
}

enum HomeScreenStatus { INITIAL, LOADING, SUCCESS, ERROR, PRODUCTS }
