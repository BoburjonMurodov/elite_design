import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  var emptyState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFf5f6fa),
        body: emptyState
            ? Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset("assets/images/empty_cart.png")),
              Text(
                "Saqlangalar hozircha mavjud emas!",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        )
            : ListView.separated(
          itemCount: 10,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child:
                  Image.asset("assets/images/image_placeholder.png"),
                ),
                SizedBox(width: 12),
                Column(
                  children: [
                    Text(
                      "mock item",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Narxi: 13 000",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "130 000 so'm",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ],
                ),

                Spacer(),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),

                    Row(
                      children: [
                        IconButton(onPressed: () {},
                            icon: Icon(Icons.remove,
                              size: 18,
                            )
                        ),
                        
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,

                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("10"),
                        ),

                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add,

                              size: 18,
                            )
                        )


                      ],
                    )
                  ],
                )
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
        ));
  }
}
