import 'package:elite_design/features/main/data/model/data/category_item/category_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'category_response.freezed.dart';
part 'category_response.g.dart';


@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    @JsonKey(name: "error")
    required bool error,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "data")
    required List<CategoryItem> data,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}

