// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  @JsonKey(name: "error")
  bool get error => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<CategoryItem> get data => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CategoryItem> data});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
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
              as List<CategoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<CategoryItem> data});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CategoryResponseImpl(
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
              as List<CategoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  const _$CategoryResponseImpl(
      {@JsonKey(name: "error") required this.error,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<CategoryItem> data})
      : _data = data;

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: "error")
  final bool error;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<CategoryItem> _data;
  @override
  @JsonKey(name: "data")
  List<CategoryItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CategoryResponse(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse(
          {@JsonKey(name: "error") required final bool error,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<CategoryItem> data}) =
      _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: "error")
  bool get error;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<CategoryItem> get data;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
