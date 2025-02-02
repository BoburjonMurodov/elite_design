// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryItemImpl _$$CategoryItemImplFromJson(Map<String, dynamic> json) =>
    _$CategoryItemImpl(
      categoryId: json['KategoriyaId'] as String,
      category: json['Kategoriya'] as String,
      photo: json['foto'] as String,
    );

Map<String, dynamic> _$$CategoryItemImplToJson(_$CategoryItemImpl instance) =>
    <String, dynamic>{
      'KategoriyaId': instance.categoryId,
      'Kategoriya': instance.category,
      'foto': instance.photo,
    };
