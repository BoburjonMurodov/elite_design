// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderRequestImpl _$$OrderRequestImplFromJson(Map<String, dynamic> json) =>
    _$OrderRequestImpl(
      comment: json['comment'] as String,
      summa: (json['summa'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      skitka: (json['skitka'] as num).toInt(),
      clientId: json['clientId'] as String,
      login: json['login'] as String,
      orderType: json['orderType'] as bool,
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: (json['type'] as num).toInt(),
      isVazvrat: json['IsVazvrat'] as bool,
    );

Map<String, dynamic> _$$OrderRequestImplToJson(_$OrderRequestImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'summa': instance.summa,
      'total': instance.total,
      'skitka': instance.skitka,
      'clientId': instance.clientId,
      'login': instance.login,
      'orderType': instance.orderType,
      'products': instance.products,
      'type': instance.type,
      'IsVazvrat': instance.isVazvrat,
    };

_$ProductRequestImpl _$$ProductRequestImplFromJson(Map<String, dynamic> json) =>
    _$ProductRequestImpl(
      tovar: json['tovar'] as String,
      pid: json['pid'] as String,
      count: (json['count'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      summa: (json['summa'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductRequestImplToJson(
        _$ProductRequestImpl instance) =>
    <String, dynamic>{
      'tovar': instance.tovar,
      'pid': instance.pid,
      'count': instance.count,
      'price': instance.price,
      'summa': instance.summa,
    };
