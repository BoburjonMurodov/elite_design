part of 'bottom_sheet_bloc.dart';


class BottomSheetState {
  Payment payment;
  String count;
  String price;
  String? error;
  Status status;

  BottomSheetState(
      {required this.payment, required this.count, required this.price,
        required this.status
      });

  copyWith({Payment? payment, String? count, String? price, Status? status}) {
    return BottomSheetState(
        payment: payment ?? this.payment,
        count: count ?? this.count,
        price: price ?? this.price,
        status: status ?? this.status,
    );
    }

}

enum Payment {
  RETAIL,
  WHOLESALE
}

enum Status{
  INITIAL, ERROR, SUCCESS
}
