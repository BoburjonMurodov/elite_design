import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
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
                        "assets/images/image_placeholder.png")),
                IconButton(
                    iconSize: 18,
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ))
              ]),
            ),
            SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  "Mock item",
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Kod: 102",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                Text(
                  "ostatka: 100",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      "45 000",
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
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFF032169),
                      borderRadius: BorderRadius.circular(50)),
                  padding: EdgeInsets.symmetric(
                      horizontal: 12, vertical: 4),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}
