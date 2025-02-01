part of 'bottom_sheet_bloc.dart';


class BottomSheetEvent {}

class BottomSheetInitial extends BottomSheetEvent {
  ProductData item;
  BottomSheetInitial({required this.item});
}

class OnClickPlus extends BottomSheetEvent {}
class OnClickMinus extends BottomSheetEvent {}
class OnChangePayment extends BottomSheetEvent {
  Payment payment;
  OnChangePayment({required this.payment});
}

class OnEnterValue extends BottomSheetEvent {
  String value;
  OnEnterValue({required this.value});
}

class OnClickAddToCart extends BottomSheetEvent {}