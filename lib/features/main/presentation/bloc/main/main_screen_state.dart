part of 'main_screen_bloc.dart';

class MainScreenState {
  int currentTab;
  String loginName;
  List<ProductData> cartItems;
  List<ProductData> favouriteItems;
  List<CategoryItem> categories;
  MainScreenStatus status;
  String? error;
  bool isVazvrat ;

  MainScreenState({
    required this.currentTab,
    required this.loginName,
    required this.cartItems,
    required this.favouriteItems,
    required this.categories,
    required this.status,
    required this.isVazvrat,
    this.error,
  });

  MainScreenState copyWith({
    int? currentTab,
    String? loginName,
    List<ProductData>? cartItems,
    List<ProductData>? favouriteItems,
    List<CategoryItem>? categories,
    required MainScreenStatus status,
    String? error,
    bool? isVazvrat,
  }) {
    return MainScreenState(
      currentTab: currentTab ?? this.currentTab,
      loginName: loginName ?? this.loginName,
      cartItems: cartItems ?? this.cartItems,
      favouriteItems: favouriteItems ?? this.favouriteItems,
      categories: categories ?? this.categories,
      error: error,
      status: status,
      isVazvrat: isVazvrat ?? this.isVazvrat ,
    );
  }
}


enum MainScreenStatus{
  INITIAL, LOADING, SUCCESS, ERROR
}

