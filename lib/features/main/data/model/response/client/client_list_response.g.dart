// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientListResponseImpl _$$ClientListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientListResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ClientItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientListResponseImplToJson(
        _$ClientListResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };
