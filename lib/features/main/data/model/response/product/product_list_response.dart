import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';


part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    @JsonKey(name: "error") required bool error,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required List<ProductItem> data,
  }) = _ProductListResponse;

  factory ProductListResponse.fromJson(Map<String, dynamic> json) => _$ProductListResponseFromJson(json);
}


@freezed
class ProductItem with _$ProductItem {
  const factory ProductItem({
    @JsonKey(name: "tovarId") required String tovarId,
    @JsonKey(name: "tovar") required String tovar,
    @JsonKey(name: "yedIzm") required String yedIzm,
    @JsonKey(name: "ostatka") required int ostatka,
    @JsonKey(name: "barcode") required List<String> barcode,
    @JsonKey(name: "sena") required int sena,
    @JsonKey(name: "optom_narx") required int optomNarx,
    @JsonKey(name: "type") required bool type,
    @JsonKey(name: "kategoriyaid") required String kategoriyaid,
    @JsonKey(name: "foto") required String foto,
  }) = _ProductItem;

  factory ProductItem.fromJson(Map<String, dynamic> json) => _$ProductItemFromJson(json);
}

