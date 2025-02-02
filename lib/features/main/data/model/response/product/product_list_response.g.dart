// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductListResponseImpl _$$ProductListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductListResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ProductItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductListResponseImplToJson(
        _$ProductListResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

_$ProductItemImpl _$$ProductItemImplFromJson(Map<String, dynamic> json) =>
    _$ProductItemImpl(
      tovarId: json['tovarId'] as String,
      tovar: json['tovar'] as String,
      yedIzm: json['yedIzm'] as String,
      ostatka: (json['ostatka'] as num).toInt(),
      barcode:
          (json['barcode'] as List<dynamic>).map((e) => e as String).toList(),
      sena: (json['sena'] as num).toInt(),
      optomNarx: (json['optom_narx'] as num).toInt(),
      type: json['type'] as bool,
      kategoriyaid: json['kategoriyaid'] as String,
      foto: json['foto'] as String,
    );

Map<String, dynamic> _$$ProductItemImplToJson(_$ProductItemImpl instance) =>
    <String, dynamic>{
      'tovarId': instance.tovarId,
      'tovar': instance.tovar,
      'yedIzm': instance.yedIzm,
      'ostatka': instance.ostatka,
      'barcode': instance.barcode,
      'sena': instance.sena,
      'optom_narx': instance.optomNarx,
      'type': instance.type,
      'kategoriyaid': instance.kategoriyaid,
      'foto': instance.foto,
    };
