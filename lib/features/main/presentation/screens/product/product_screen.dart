import 'package:elite_design/features/main/presentation/screens/home/widgets/search_wigdet.dart';
import 'package:elite_design/features/main/presentation/screens/saved/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

import '../saved/widgets/empty_state_widget.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key, required this.title});

  String title;
  final TextEditingController _search = TextEditingController();
  var emptyState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f7fa),
      appBar: AppBar(
        backgroundColor: Color(0xFF262a33),
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Iconify(
                size: 18,
                Zondicons.reload,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.qr_code_scanner)),
          IconButton(
              onPressed: () {},
              color: Colors.white,
              icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: emptyState
          ? EmptyStateWidget(
              imageLink: "assets/images/empty_product.png",
              title: "Mahsulotlar topilmadi!"
      )
          : Column(
              children: [
                SearchWidget(
                    controller: _search, title: "Mahsulot qidirish..."),
                Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ProductItem();
                        },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 12);
                      },)
                )
              ],
            ),
    );
  }
}
