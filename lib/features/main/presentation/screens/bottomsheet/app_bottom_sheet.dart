import 'dart:developer';

import 'package:elite_design/core/utils/extension.dart';
import 'package:elite_design/features/main/presentation/screens/consumer/consumer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/data/product_data/product_data.dart';
import '../../bloc/bottomsheet/bottom_sheet_bloc.dart';
import '../../bloc/main/main_screen_bloc.dart';

void showAppBottomSheet({
  required BuildContext context,
  required ProductData item,
  required Function() onUpdate,
}) {
  final controller = TextEditingController();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return BlocProvider(
        create: (context) => BottomSheetBloc()..add(BottomSheetInitial(item: item)),
        child: BlocConsumer<BottomSheetBloc, BottomSheetState>(
          listener: (context, state) {
            controller.text = state.count;

            if (state.status == Status.SUCCESS) {
              Navigator.pop(context);
              onUpdate();
              context.read<MainScreenBloc>().add(GetCartItems());
            }

            if (state.status == Status.ERROR) {
              showErrorDialog(context, "Noto'g'ri qiymat kiritildi");
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.tovar,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('ostatka: ${item.ostatka}'),
                      Row(
                        children: [
                          RadioMenuButton(
                            value: Payment.RETAIL,
                            groupValue: state.payment,
                            onChanged: (value) {
                              context.read<BottomSheetBloc>().add(OnChangePayment(payment: value!));
                            },
                            child: Text('Dona'),
                          ),
                          RadioMenuButton(
                            value: Payment.WHOLESALE,
                            groupValue: state.payment,
                            onChanged: (value) {
                              context.read<BottomSheetBloc>().add(OnChangePayment(payment: value!));
                            },
                            child: Text('Optom'),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              context.read<BottomSheetBloc>().add(OnClickMinus());
                            },
                            icon: Icon(Icons.exposure_minus_1),
                          ),
                          Expanded(
                            child: TextField(
                              controller: controller,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                context.read<BottomSheetBloc>().add(OnEnterValue(value: value));
                              },
                              decoration: InputDecoration(border: OutlineInputBorder()),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<BottomSheetBloc>().add(OnClickPlus());
                            },
                            icon: Icon(Icons.plus_one),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: _AppTextField(
                              context,
                              false,
                              "Narxi: so'm",
                              state.payment == Payment.RETAIL ? item.sena.toString() : item.optomNarx.toString(),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: _AppTextField(context, false, 'Jami narx', state.price),
                          ),
                        ],
                      ),
                      SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {
                          log('OnClickAddToCart');
                          context.read<BottomSheetBloc>().add(OnClickAddToCart());
                        },
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              "Savatga qo'shish",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
    },
  );
}

Widget _AppTextField(
    BuildContext context, bool enabled, String title, String value) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      TextField(
        enabled: enabled,
        textAlign: TextAlign.center,
        controller: TextEditingController(text: value.formatMoney()),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    ],
  );
}
