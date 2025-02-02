// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientItemImpl _$$ClientItemImplFromJson(Map<String, dynamic> json) =>
    _$ClientItemImpl(
      client: json['client'] as String,
      clientId: (json['clientID'] as num).toInt(),
      sum: json['sum'] as String,
      dollar: json['dollar'] as String,
    );

Map<String, dynamic> _$$ClientItemImplToJson(_$ClientItemImpl instance) =>
    <String, dynamic>{
      'client': instance.client,
      'clientID': instance.clientId,
      'sum': instance.sum,
      'dollar': instance.dollar,
    };
