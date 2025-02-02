import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'dart:convert';

part 'order_request.freezed.dart';
part 'order_request.g.dart';

@freezed
class OrderRequest with _$OrderRequest {
  const factory OrderRequest({
    @JsonKey(name: "comment")
    required String comment,
    @JsonKey(name: "summa")
    required int summa,
    @JsonKey(name: "total")
    required int total,
    @JsonKey(name: "skitka")
    required int skitka,
    @JsonKey(name: "clientId")
    required String clientId,
    @JsonKey(name: "login")
    required String login,
    @JsonKey(name: "orderType")
    required bool orderType,
    @JsonKey(name: "products")
    required List<ProductRequest> products,
    @JsonKey(name: "type")
    required int type,
    @JsonKey(name: "IsVazvrat")
    required bool isVazvrat,
  }) = _OrderRequest;

  factory OrderRequest.fromJson(Map<String, dynamic> json) => _$OrderRequestFromJson(json);
}

@freezed
class ProductRequest with _$ProductRequest {
  const factory ProductRequest({
    @JsonKey(name: "tovar")
    required String tovar,
    @JsonKey(name: "pid")
    required String pid,
    @JsonKey(name: "count")
    required int count,
    @JsonKey(name: "price")
    required int price,
    @JsonKey(name: "summa")
    required int summa,
  }) = _ProductRequest;

  factory ProductRequest.fromJson(Map<String, dynamic> json) => _$ProductRequestFromJson(json);
}