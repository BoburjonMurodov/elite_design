import 'package:elite_design/core/utils/extension.dart';
import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';
import 'package:elite_design/features/main/data/model/response/product/product_list_response.dart';
import 'package:elite_design/features/main/presentation/bloc/main/main_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/bottomsheet/bottom_sheet_bloc.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget({
    super.key,
    required this.item,
    required this.onClickDelete,
    required this.onClickMinus,
    required this.onClickPlus,
    required this.product,
  });

  ProductData item;
  Function() onClickDelete;
  Function() onClickPlus;
  Function() onClickMinus;
  ProductItem? product;

  @override
  Widget build(BuildContext context) {
    final price = item.payment == Payment.RETAIL ? item.sena : item.optomNarx;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80,
          height: 80,
          child: Image.asset("assets/images/image_placeholder.png"),
        ),
        SizedBox(width: 12),
        Column(
          children: [
            Text(
              item.tovar,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Narxi: ${price.toString().formatMoney()} ",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            SizedBox(height: 12),
            Text(
              "${(price * item.count).toString().formatMoney()}",
              style: TextStyle(fontSize: 14, color: Colors.blue),
            ),
            product != null
                ? Text(
                    'ostatka: ${product?.ostatka}',
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  )
                : SizedBox()
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  onClickDelete();
                  context.read<MainScreenBloc>().add(GetCartItems());
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      onClickMinus();
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 18,
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(item.count.toString()),
                ),
                IconButton(
                    onPressed: () {
                      onClickPlus();
                    },
                    icon: Icon(
                      Icons.add,
                      size: 18,
                    ))
              ],
            )
          ],
        )
      ],
    );
  }
}
