// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientListResponse _$ClientListResponseFromJson(Map<String, dynamic> json) {
  return _ClientListResponse.fromJson(json);
}

/// @nodoc
mixin _$ClientListResponse {
  @JsonKey(name: "error")
  bool get error => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ClientItem> get data => throw _privateConstructorUsedError;

  /// Serializes this ClientListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientListResponseCopyWith<ClientListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientListResponseCopyWith<$Res> {
  factory $ClientListResponseCopyWith(
          ClientListResponse value, $Res Function(ClientListResponse) then) =
      _$ClientListResponseCopyWithImpl<$Res, ClientListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ClientItem> data});
}

/// @nodoc
class _$ClientListResponseCopyWithImpl<$Res, $Val extends ClientListResponse>
    implements $ClientListResponseCopyWith<$Res> {
  _$ClientListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientListResponse
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
              as List<ClientItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientListResponseImplCopyWith<$Res>
    implements $ClientListResponseCopyWith<$Res> {
  factory _$$ClientListResponseImplCopyWith(_$ClientListResponseImpl value,
          $Res Function(_$ClientListResponseImpl) then) =
      __$$ClientListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ClientItem> data});
}

/// @nodoc
class __$$ClientListResponseImplCopyWithImpl<$Res>
    extends _$ClientListResponseCopyWithImpl<$Res, _$ClientListResponseImpl>
    implements _$$ClientListResponseImplCopyWith<$Res> {
  __$$ClientListResponseImplCopyWithImpl(_$ClientListResponseImpl _value,
      $Res Function(_$ClientListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ClientListResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ClientItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientListResponseImpl implements _ClientListResponse {
  const _$ClientListResponseImpl(
      {@JsonKey(name: "error") required this.error,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<ClientItem> data})
      : _data = data;

  factory _$ClientListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientListResponseImplFromJson(json);

  @override
  @JsonKey(name: "error")
  final bool error;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<ClientItem> _data;
  @override
  @JsonKey(name: "data")
  List<ClientItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ClientListResponse(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientListResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ClientListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientListResponseImplCopyWith<_$ClientListResponseImpl> get copyWith =>
      __$$ClientListResponseImplCopyWithImpl<_$ClientListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientListResponseImplToJson(
      this,
    );
  }
}

abstract class _ClientListResponse implements ClientListResponse {
  const factory _ClientListResponse(
          {@JsonKey(name: "error") required final bool error,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<ClientItem> data}) =
      _$ClientListResponseImpl;

  factory _ClientListResponse.fromJson(Map<String, dynamic> json) =
      _$ClientListResponseImpl.fromJson;

  @override
  @JsonKey(name: "error")
  bool get error;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<ClientItem> get data;

  /// Create a copy of ClientListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientListResponseImplCopyWith<_$ClientListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
