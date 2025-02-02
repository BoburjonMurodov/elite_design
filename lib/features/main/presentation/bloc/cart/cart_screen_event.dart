part of 'cart_screen_bloc.dart';



class CartScreenEvent {}


class CartScreenInitial extends CartScreenEvent {}
class OnClickDelete extends CartScreenEvent {
  final int index;
  OnClickDelete(this.index);
}
class OnClickMinus extends CartScreenEvent {
  final int index;
  OnClickMinus(this.index);
}

class OnClickPlus extends CartScreenEvent {
  final int index;
  OnClickPlus(this.index);
}

class OnClickOrderButton extends CartScreenEvent {}
class OnSwitchValueChange extends CartScreenEvent{
   bool value;
   OnSwitchValueChange(this.value);
}