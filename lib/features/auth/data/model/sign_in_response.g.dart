// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInResponseImpl _$$SignInResponseImplFromJson(Map<String, dynamic> json) =>
    _$SignInResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      data: SignInData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInResponseImplToJson(
        _$SignInResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'data': instance.data,
    };

_$SignInDataImpl _$$SignInDataImplFromJson(Map<String, dynamic> json) =>
    _$SignInDataImpl(
      login: json['login'] as String,
      password: json['password'] as String,
      sklad: json['sklad'] as String,
      skladId: json['skladId'] as String,
      registrirovan: json['registrirovan'] as bool,
      adress: json['adress'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$$SignInDataImplToJson(_$SignInDataImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'sklad': instance.sklad,
      'skladId': instance.skladId,
      'registrirovan': instance.registrirovan,
      'adress': instance.adress,
      'phone': instance.phone,
      'email': instance.email,
      'name': instance.name,
      'token': instance.token,
    };
