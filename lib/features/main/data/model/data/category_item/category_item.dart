import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item.freezed.dart';
part 'category_item.g.dart';


@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    @JsonKey(name: "KategoriyaId")
    required String categoryId,
    @JsonKey(name: "Kategoriya")
    required String category,
    @JsonKey(name: "foto")
    required String photo,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) => _$CategoryItemFromJson(json);
}
