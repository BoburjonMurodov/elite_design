import '../../response/product/product_list_response.dart';

class ProductData {
  final String tovarId;
  final String tovar;
  final String yedIzm;
  final int ostatka;
  final List<String> barcode;
  final int sena;
  final int optomNarx;
  final bool type;
  final String kategoriyaid;
  final bool isFavourite;
  final int count;
  final String payment; // Added payment field

  ProductData({
    required this.tovarId,
    required this.tovar,
    required this.yedIzm,
    required this.ostatka,
    required this.barcode,
    required this.sena,
    required this.optomNarx,
    required this.type,
    required this.kategoriyaid,
    this.isFavourite = false,
    this.count = 0, // Default count is 0
    this.payment = '', // Default payment is empty
  });

  Map<String, dynamic> toMap() {
    return {
      'tovarId': tovarId,
      'tovar': tovar,
      'yedIzm': yedIzm,
      'ostatka': ostatka,
      'barcode': barcode.join(','),
      'sena': sena,
      'optomNarx': optomNarx,
      'type': type ? 1 : 0,
      'kategoriyaid': kategoriyaid,
      'isFavourite': isFavourite ? 1 : 0,
      'count': count,
      'payment': payment, // Save payment type
    };
  }

  factory ProductData.fromProductItem(ProductItem item, bool isFavourite, int count, {String payment = ''}) {
    return ProductData(
      tovarId: item.tovarId,
      tovar: item.tovar,
      yedIzm: item.yedIzm,
      ostatka: item.ostatka,
      barcode: item.barcode,
      sena: item.sena,
      optomNarx: item.optomNarx,
      type: item.type,
      kategoriyaid: item.kategoriyaid,
      isFavourite: isFavourite,
      count: count,
      payment: payment, // Set the payment type
    );
  }

  factory ProductData.fromMap(Map<String, dynamic> map) {
    return ProductData(
      tovarId: map['tovarId'],
      tovar: map['tovar'],
      yedIzm: map['yedIzm'],
      ostatka: map['ostatka'],
      barcode: map['barcode'].split(','),
      sena: map['sena'],
      optomNarx: map['optomNarx'],
      type: map['type'] == 1,
      kategoriyaid: map['kategoriyaid'],
      isFavourite: map['isFavourite'] == 1,
      count: map['count'] ?? 0,
      payment: map['payment'] ?? '', // Retrieve payment type from DB
    );
  }
}