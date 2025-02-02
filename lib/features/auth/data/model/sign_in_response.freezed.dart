// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) {
  return _SignInResponse.fromJson(json);
}

/// @nodoc
mixin _$SignInResponse {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  SignInData get data => throw _privateConstructorUsedError;

  /// Serializes this SignInResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInResponseCopyWith<SignInResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseCopyWith<$Res> {
  factory $SignInResponseCopyWith(
          SignInResponse value, $Res Function(SignInResponse) then) =
      _$SignInResponseCopyWithImpl<$Res, SignInResponse>;
  @useResult
  $Res call({bool error, String message, SignInData data});

  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignInResponseCopyWithImpl<$Res, $Val extends SignInResponse>
    implements $SignInResponseCopyWith<$Res> {
  _$SignInResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ) as $Val);
  }

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignInDataCopyWith<$Res> get data {
    return $SignInDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignInResponseImplCopyWith<$Res>
    implements $SignInResponseCopyWith<$Res> {
  factory _$$SignInResponseImplCopyWith(_$SignInResponseImpl value,
          $Res Function(_$SignInResponseImpl) then) =
      __$$SignInResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, SignInData data});

  @override
  $SignInDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$SignInResponseImplCopyWithImpl<$Res>
    extends _$SignInResponseCopyWithImpl<$Res, _$SignInResponseImpl>
    implements _$$SignInResponseImplCopyWith<$Res> {
  __$$SignInResponseImplCopyWithImpl(
      _$SignInResponseImpl _value, $Res Function(_$SignInResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$SignInResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignInData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseImpl implements _SignInResponse {
  const _$SignInResponseImpl(
      {required this.error, required this.message, required this.data});

  factory _$SignInResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final SignInData data;

  @override
  String toString() {
    return 'SignInResponse(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, data);

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      __$$SignInResponseImplCopyWithImpl<_$SignInResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseImplToJson(
      this,
    );
  }
}

abstract class _SignInResponse implements SignInResponse {
  const factory _SignInResponse(
      {required final bool error,
      required final String message,
      required final SignInData data}) = _$SignInResponseImpl;

  factory _SignInResponse.fromJson(Map<String, dynamic> json) =
      _$SignInResponseImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  SignInData get data;

  /// Create a copy of SignInResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInResponseImplCopyWith<_$SignInResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignInData _$SignInDataFromJson(Map<String, dynamic> json) {
  return _SignInData.fromJson(json);
}

/// @nodoc
mixin _$SignInData {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get sklad => throw _privateConstructorUsedError;
  String get skladId => throw _privateConstructorUsedError;
  bool get registrirovan => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  /// Serializes this SignInData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInDataCopyWith<SignInData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInDataCopyWith<$Res> {
  factory $SignInDataCopyWith(
          SignInData value, $Res Function(SignInData) then) =
      _$SignInDataCopyWithImpl<$Res, SignInData>;
  @useResult
  $Res call(
      {String login,
      String password,
      String sklad,
      String skladId,
      bool registrirovan,
      String? adress,
      String? phone,
      String? email,
      String? name,
      String token});
}

/// @nodoc
class _$SignInDataCopyWithImpl<$Res, $Val extends SignInData>
    implements $SignInDataCopyWith<$Res> {
  _$SignInDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? sklad = null,
    Object? skladId = null,
    Object? registrirovan = null,
    Object? adress = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      sklad: null == sklad
          ? _value.sklad
          : sklad // ignore: cast_nullable_to_non_nullable
              as String,
      skladId: null == skladId
          ? _value.skladId
          : skladId // ignore: cast_nullable_to_non_nullable
              as String,
      registrirovan: null == registrirovan
          ? _value.registrirovan
          : registrirovan // ignore: cast_nullable_to_non_nullable
              as bool,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInDataImplCopyWith<$Res>
    implements $SignInDataCopyWith<$Res> {
  factory _$$SignInDataImplCopyWith(
          _$SignInDataImpl value, $Res Function(_$SignInDataImpl) then) =
      __$$SignInDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String login,
      String password,
      String sklad,
      String skladId,
      bool registrirovan,
      String? adress,
      String? phone,
      String? email,
      String? name,
      String token});
}

/// @nodoc
class __$$SignInDataImplCopyWithImpl<$Res>
    extends _$SignInDataCopyWithImpl<$Res, _$SignInDataImpl>
    implements _$$SignInDataImplCopyWith<$Res> {
  __$$SignInDataImplCopyWithImpl(
      _$SignInDataImpl _value, $Res Function(_$SignInDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? sklad = null,
    Object? skladId = null,
    Object? registrirovan = null,
    Object? adress = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? token = null,
  }) {
    return _then(_$SignInDataImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      sklad: null == sklad
          ? _value.sklad
          : sklad // ignore: cast_nullable_to_non_nullable
              as String,
      skladId: null == skladId
          ? _value.skladId
          : skladId // ignore: cast_nullable_to_non_nullable
              as String,
      registrirovan: null == registrirovan
          ? _value.registrirovan
          : registrirovan // ignore: cast_nullable_to_non_nullable
              as bool,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInDataImpl implements _SignInData {
  const _$SignInDataImpl(
      {required this.login,
      required this.password,
      required this.sklad,
      required this.skladId,
      required this.registrirovan,
      this.adress,
      this.phone,
      this.email,
      this.name,
      required this.token});

  factory _$SignInDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInDataImplFromJson(json);

  @override
  final String login;
  @override
  final String password;
  @override
  final String sklad;
  @override
  final String skladId;
  @override
  final bool registrirovan;
  @override
  final String? adress;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String token;

  @override
  String toString() {
    return 'SignInData(login: $login, password: $password, sklad: $sklad, skladId: $skladId, registrirovan: $registrirovan, adress: $adress, phone: $phone, email: $email, name: $name, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInDataImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.sklad, sklad) || other.sklad == sklad) &&
            (identical(other.skladId, skladId) || other.skladId == skladId) &&
            (identical(other.registrirovan, registrirovan) ||
                other.registrirovan == registrirovan) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login, password, sklad, skladId,
      registrirovan, adress, phone, email, name, token);

  /// Create a copy of SignInData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      __$$SignInDataImplCopyWithImpl<_$SignInDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInDataImplToJson(
      this,
    );
  }
}

abstract class _SignInData implements SignInData {
  const factory _SignInData(
      {required final String login,
      required final String password,
      required final String sklad,
      required final String skladId,
      required final bool registrirovan,
      final String? adress,
      final String? phone,
      final String? email,
      final String? name,
      required final String token}) = _$SignInDataImpl;

  factory _SignInData.fromJson(Map<String, dynamic> json) =
      _$SignInDataImpl.fromJson;

  @override
  String get login;
  @override
  String get password;
  @override
  String get sklad;
  @override
  String get skladId;
  @override
  bool get registrirovan;
  @override
  String? get adress;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String get token;

  /// Create a copy of SignInData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInDataImplCopyWith<_$SignInDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
