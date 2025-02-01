import 'package:elite_design/core/routes/route_manager.dart';
import 'package:elite_design/features/main/presentation/screens/bottomsheet/app_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/data/product_data/product_data.dart';

class ProductItemWidget extends StatelessWidget {
  ProductItemWidget({super.key, required this.item, this.onClick, required this.bloc});

  ProductData item;
  Function(String)? onClick;
  String bloc;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ]),
        padding: EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                        fit: BoxFit.cover,
                        "assets/images/image_placeholder.png")
                ),
                IconButton(
                    iconSize: 18,
                    onPressed: () {
                      onClick!(item.tovarId);
                    },
                    icon: Icon(
                      item.isFavourite
                          ? Icons.favorite
                          : Icons.favorite_outline_rounded,
                      color: Colors.black,
                    ))
              ]),
            ),
            SizedBox(width: 12),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maxLines: 2,
                    item.tovar.toString(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "kod: ${item.tovarId}",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Text(
                    'ostatka: ${item.ostatka}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Text(
                        item.sena.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Transform.rotate(
                        angle: -90 * (3.141592653589793 / 180),
                        child: Text(" so'm",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),

            Spacer(),

            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF032169),
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: item.count == 0 ?  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ) : Text('${item.count}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ) ,
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
