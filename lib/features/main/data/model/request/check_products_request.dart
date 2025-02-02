
import 'package:flutter/cupertino.dart';

class CheckProductsRequest{
  final String id;
  final List<CheckProductItem> products;

  CheckProductsRequest({required this.id, required this.products});

  Map<String, dynamic> toJson() {
    return {
      "skladId": id,
      "Products": products.map((e) => e.toJson()).toList()
    };
  }
}

class CheckProductItem{
    final String id;
    CheckProductItem(this.id);
    toJson(){
      return {
        "id": id,
      };
    }
}

