// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductListResponse _$ProductListResponseFromJson(Map<String, dynamic> json) {
  return _ProductListResponse.fromJson(json);
}

/// @nodoc
mixin _$ProductListResponse {
  @JsonKey(name: "error")
  bool get error => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<ProductItem> get data => throw _privateConstructorUsedError;

  /// Serializes this ProductListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductListResponseCopyWith<ProductListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductListResponseCopyWith<$Res> {
  factory $ProductListResponseCopyWith(
          ProductListResponse value, $Res Function(ProductListResponse) then) =
      _$ProductListResponseCopyWithImpl<$Res, ProductListResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ProductItem> data});
}

/// @nodoc
class _$ProductListResponseCopyWithImpl<$Res, $Val extends ProductListResponse>
    implements $ProductListResponseCopyWith<$Res> {
  _$ProductListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductListResponse
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
              as List<ProductItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductListResponseImplCopyWith<$Res>
    implements $ProductListResponseCopyWith<$Res> {
  factory _$$ProductListResponseImplCopyWith(_$ProductListResponseImpl value,
          $Res Function(_$ProductListResponseImpl) then) =
      __$$ProductListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "error") bool error,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") List<ProductItem> data});
}

/// @nodoc
class __$$ProductListResponseImplCopyWithImpl<$Res>
    extends _$ProductListResponseCopyWithImpl<$Res, _$ProductListResponseImpl>
    implements _$$ProductListResponseImplCopyWith<$Res> {
  __$$ProductListResponseImplCopyWithImpl(_$ProductListResponseImpl _value,
      $Res Function(_$ProductListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$ProductListResponseImpl(
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
              as List<ProductItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductListResponseImpl implements _ProductListResponse {
  const _$ProductListResponseImpl(
      {@JsonKey(name: "error") required this.error,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required final List<ProductItem> data})
      : _data = data;

  factory _$ProductListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductListResponseImplFromJson(json);

  @override
  @JsonKey(name: "error")
  final bool error;
  @override
  @JsonKey(name: "message")
  final String message;
  final List<ProductItem> _data;
  @override
  @JsonKey(name: "data")
  List<ProductItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductListResponse(error: $error, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductListResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, error, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      __$$ProductListResponseImplCopyWithImpl<_$ProductListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductListResponseImplToJson(
      this,
    );
  }
}

abstract class _ProductListResponse implements ProductListResponse {
  const factory _ProductListResponse(
          {@JsonKey(name: "error") required final bool error,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final List<ProductItem> data}) =
      _$ProductListResponseImpl;

  factory _ProductListResponse.fromJson(Map<String, dynamic> json) =
      _$ProductListResponseImpl.fromJson;

  @override
  @JsonKey(name: "error")
  bool get error;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  List<ProductItem> get data;

  /// Create a copy of ProductListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductListResponseImplCopyWith<_$ProductListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductItem _$ProductItemFromJson(Map<String, dynamic> json) {
  return _ProductItem.fromJson(json);
}

/// @nodoc
mixin _$ProductItem {
  @JsonKey(name: "tovarId")
  String get tovarId => throw _privateConstructorUsedError;
  @JsonKey(name: "tovar")
  String get tovar => throw _privateConstructorUsedError;
  @JsonKey(name: "yedIzm")
  String get yedIzm => throw _privateConstructorUsedError;
  @JsonKey(name: "ostatka")
  int get ostatka => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  List<String> get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "sena")
  int get sena => throw _privateConstructorUsedError;
  @JsonKey(name: "optom_narx")
  int get optomNarx => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  bool get type => throw _privateConstructorUsedError;
  @JsonKey(name: "kategoriyaid")
  String get kategoriyaid => throw _privateConstructorUsedError;
  @JsonKey(name: "foto")
  String get foto => throw _privateConstructorUsedError;

  /// Serializes this ProductItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductItemCopyWith<ProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemCopyWith<$Res> {
  factory $ProductItemCopyWith(
          ProductItem value, $Res Function(ProductItem) then) =
      _$ProductItemCopyWithImpl<$Res, ProductItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "tovarId") String tovarId,
      @JsonKey(name: "tovar") String tovar,
      @JsonKey(name: "yedIzm") String yedIzm,
      @JsonKey(name: "ostatka") int ostatka,
      @JsonKey(name: "barcode") List<String> barcode,
      @JsonKey(name: "sena") int sena,
      @JsonKey(name: "optom_narx") int optomNarx,
      @JsonKey(name: "type") bool type,
      @JsonKey(name: "kategoriyaid") String kategoriyaid,
      @JsonKey(name: "foto") String foto});
}

/// @nodoc
class _$ProductItemCopyWithImpl<$Res, $Val extends ProductItem>
    implements $ProductItemCopyWith<$Res> {
  _$ProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tovarId = null,
    Object? tovar = null,
    Object? yedIzm = null,
    Object? ostatka = null,
    Object? barcode = null,
    Object? sena = null,
    Object? optomNarx = null,
    Object? type = null,
    Object? kategoriyaid = null,
    Object? foto = null,
  }) {
    return _then(_value.copyWith(
      tovarId: null == tovarId
          ? _value.tovarId
          : tovarId // ignore: cast_nullable_to_non_nullable
              as String,
      tovar: null == tovar
          ? _value.tovar
          : tovar // ignore: cast_nullable_to_non_nullable
              as String,
      yedIzm: null == yedIzm
          ? _value.yedIzm
          : yedIzm // ignore: cast_nullable_to_non_nullable
              as String,
      ostatka: null == ostatka
          ? _value.ostatka
          : ostatka // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sena: null == sena
          ? _value.sena
          : sena // ignore: cast_nullable_to_non_nullable
              as int,
      optomNarx: null == optomNarx
          ? _value.optomNarx
          : optomNarx // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as bool,
      kategoriyaid: null == kategoriyaid
          ? _value.kategoriyaid
          : kategoriyaid // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemImplCopyWith<$Res>
    implements $ProductItemCopyWith<$Res> {
  factory _$$ProductItemImplCopyWith(
          _$ProductItemImpl value, $Res Function(_$ProductItemImpl) then) =
      __$$ProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tovarId") String tovarId,
      @JsonKey(name: "tovar") String tovar,
      @JsonKey(name: "yedIzm") String yedIzm,
      @JsonKey(name: "ostatka") int ostatka,
      @JsonKey(name: "barcode") List<String> barcode,
      @JsonKey(name: "sena") int sena,
      @JsonKey(name: "optom_narx") int optomNarx,
      @JsonKey(name: "type") bool type,
      @JsonKey(name: "kategoriyaid") String kategoriyaid,
      @JsonKey(name: "foto") String foto});
}

/// @nodoc
class __$$ProductItemImplCopyWithImpl<$Res>
    extends _$ProductItemCopyWithImpl<$Res, _$ProductItemImpl>
    implements _$$ProductItemImplCopyWith<$Res> {
  __$$ProductItemImplCopyWithImpl(
      _$ProductItemImpl _value, $Res Function(_$ProductItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tovarId = null,
    Object? tovar = null,
    Object? yedIzm = null,
    Object? ostatka = null,
    Object? barcode = null,
    Object? sena = null,
    Object? optomNarx = null,
    Object? type = null,
    Object? kategoriyaid = null,
    Object? foto = null,
  }) {
    return _then(_$ProductItemImpl(
      tovarId: null == tovarId
          ? _value.tovarId
          : tovarId // ignore: cast_nullable_to_non_nullable
              as String,
      tovar: null == tovar
          ? _value.tovar
          : tovar // ignore: cast_nullable_to_non_nullable
              as String,
      yedIzm: null == yedIzm
          ? _value.yedIzm
          : yedIzm // ignore: cast_nullable_to_non_nullable
              as String,
      ostatka: null == ostatka
          ? _value.ostatka
          : ostatka // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: null == barcode
          ? _value._barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sena: null == sena
          ? _value.sena
          : sena // ignore: cast_nullable_to_non_nullable
              as int,
      optomNarx: null == optomNarx
          ? _value.optomNarx
          : optomNarx // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as bool,
      kategoriyaid: null == kategoriyaid
          ? _value.kategoriyaid
          : kategoriyaid // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemImpl implements _ProductItem {
  const _$ProductItemImpl(
      {@JsonKey(name: "tovarId") required this.tovarId,
      @JsonKey(name: "tovar") required this.tovar,
      @JsonKey(name: "yedIzm") required this.yedIzm,
      @JsonKey(name: "ostatka") required this.ostatka,
      @JsonKey(name: "barcode") required final List<String> barcode,
      @JsonKey(name: "sena") required this.sena,
      @JsonKey(name: "optom_narx") required this.optomNarx,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "kategoriyaid") required this.kategoriyaid,
      @JsonKey(name: "foto") required this.foto})
      : _barcode = barcode;

  factory _$ProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemImplFromJson(json);

  @override
  @JsonKey(name: "tovarId")
  final String tovarId;
  @override
  @JsonKey(name: "tovar")
  final String tovar;
  @override
  @JsonKey(name: "yedIzm")
  final String yedIzm;
  @override
  @JsonKey(name: "ostatka")
  final int ostatka;
  final List<String> _barcode;
  @override
  @JsonKey(name: "barcode")
  List<String> get barcode {
    if (_barcode is EqualUnmodifiableListView) return _barcode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_barcode);
  }

  @override
  @JsonKey(name: "sena")
  final int sena;
  @override
  @JsonKey(name: "optom_narx")
  final int optomNarx;
  @override
  @JsonKey(name: "type")
  final bool type;
  @override
  @JsonKey(name: "kategoriyaid")
  final String kategoriyaid;
  @override
  @JsonKey(name: "foto")
  final String foto;

  @override
  String toString() {
    return 'ProductItem(tovarId: $tovarId, tovar: $tovar, yedIzm: $yedIzm, ostatka: $ostatka, barcode: $barcode, sena: $sena, optomNarx: $optomNarx, type: $type, kategoriyaid: $kategoriyaid, foto: $foto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemImpl &&
            (identical(other.tovarId, tovarId) || other.tovarId == tovarId) &&
            (identical(other.tovar, tovar) || other.tovar == tovar) &&
            (identical(other.yedIzm, yedIzm) || other.yedIzm == yedIzm) &&
            (identical(other.ostatka, ostatka) || other.ostatka == ostatka) &&
            const DeepCollectionEquality().equals(other._barcode, _barcode) &&
            (identical(other.sena, sena) || other.sena == sena) &&
            (identical(other.optomNarx, optomNarx) ||
                other.optomNarx == optomNarx) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.kategoriyaid, kategoriyaid) ||
                other.kategoriyaid == kategoriyaid) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      tovarId,
      tovar,
      yedIzm,
      ostatka,
      const DeepCollectionEquality().hash(_barcode),
      sena,
      optomNarx,
      type,
      kategoriyaid,
      foto);

  /// Create a copy of ProductItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      __$$ProductItemImplCopyWithImpl<_$ProductItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemImplToJson(
      this,
    );
  }
}

abstract class _ProductItem implements ProductItem {
  const factory _ProductItem(
      {@JsonKey(name: "tovarId") required final String tovarId,
      @JsonKey(name: "tovar") required final String tovar,
      @JsonKey(name: "yedIzm") required final String yedIzm,
      @JsonKey(name: "ostatka") required final int ostatka,
      @JsonKey(name: "barcode") required final List<String> barcode,
      @JsonKey(name: "sena") required final int sena,
      @JsonKey(name: "optom_narx") required final int optomNarx,
      @JsonKey(name: "type") required final bool type,
      @JsonKey(name: "kategoriyaid") required final String kategoriyaid,
      @JsonKey(name: "foto") required final String foto}) = _$ProductItemImpl;

  factory _ProductItem.fromJson(Map<String, dynamic> json) =
      _$ProductItemImpl.fromJson;

  @override
  @JsonKey(name: "tovarId")
  String get tovarId;
  @override
  @JsonKey(name: "tovar")
  String get tovar;
  @override
  @JsonKey(name: "yedIzm")
  String get yedIzm;
  @override
  @JsonKey(name: "ostatka")
  int get ostatka;
  @override
  @JsonKey(name: "barcode")
  List<String> get barcode;
  @override
  @JsonKey(name: "sena")
  int get sena;
  @override
  @JsonKey(name: "optom_narx")
  int get optomNarx;
  @override
  @JsonKey(name: "type")
  bool get type;
  @override
  @JsonKey(name: "kategoriyaid")
  String get kategoriyaid;
  @override
  @JsonKey(name: "foto")
  String get foto;

  /// Create a copy of ProductItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductItemImplCopyWith<_$ProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
