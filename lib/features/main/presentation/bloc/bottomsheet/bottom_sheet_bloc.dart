import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';

import '../../../domain/repository/product_repository.dart';

part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';

class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  late ProductData item;
  ProductRepository _repository = ProductRepositoryImpl();

  BottomSheetBloc()
      : super(
      BottomSheetState(payment: Payment.RETAIL, count: '1', price: '0', status: Status.INITIAL)) {
    on<BottomSheetEvent>((event, emit) {});

    on<BottomSheetInitial>((event, emit) {
      item = event.item;
      emit(state.copyWith(
        price: item.sena.toString(),
      ));
    });

    on<OnClickPlus>((event, emit) {
      final count = int.parse(state.count);
      if (count < item.ostatka) {
        emit(state.copyWith(count: (count + 1).toString()));
        emit(state.copyWith(price: calculatePrice()));
      }
    });

    on<OnClickMinus>((event, emit) {
      final count = int.parse(state.count);
      if (count > 1) {
        emit(state.copyWith(count: (count - 1).toString()));
        emit(state.copyWith(price: calculatePrice()));
      }
    });

    on<OnEnterValue>((event, emit) {
      String enteredValue = event.value.trim();

      if (enteredValue.isNotEmpty) {
        emit(state.copyWith(count: enteredValue));
        emit(state.copyWith(price: calculatePrice()));
      } else {
        emit(state.copyWith(price: '0', count: ''));
      }
    });

    on<OnChangePayment>((event, emit) {
      final updatedState = state.copyWith(payment: event.payment);
      emit(updatedState);
      final newPrice = calculatePrice();
      emit(updatedState.copyWith(price: newPrice));
    });

    on<OnClickAddToCart>((event, emit) async {
      final count = int.tryParse(state.count) ?? 0;
      if (count > 0 && count <= item.ostatka) {
        await _repository.addProductToCart(item.tovarId, count, state.payment.name);
        emit(state.copyWith(status: Status.SUCCESS));
      }else{
        log('notogri qiymat kiritildi');
        emit(state.copyWith(status: Status.ERROR));
      }
    });
  }

  String calculatePrice() {
    if (state.count.isEmpty) {
      return '0';
    }

    int? quantity = int.tryParse(state.count);

    if (quantity == null) {
      return '0';
    }
    log('payment method - ${state.payment}');
    if (state.payment == Payment.RETAIL) {
      final price = (item.sena * quantity).toString();
      return price;
    } else {
      final price = (item.optomNarx * quantity).toString();
      return price;
    }
  }
}
