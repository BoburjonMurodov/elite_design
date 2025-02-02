// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderRequest _$OrderRequestFromJson(Map<String, dynamic> json) {
  return _OrderRequest.fromJson(json);
}

/// @nodoc
mixin _$OrderRequest {
  @JsonKey(name: "comment")
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "summa")
  int get summa => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "skitka")
  int get skitka => throw _privateConstructorUsedError;
  @JsonKey(name: "clientId")
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: "login")
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: "orderType")
  bool get orderType => throw _privateConstructorUsedError;
  @JsonKey(name: "products")
  List<ProductRequest> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: "IsVazvrat")
  bool get isVazvrat => throw _privateConstructorUsedError;

  /// Serializes this OrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderRequestCopyWith<OrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderRequestCopyWith<$Res> {
  factory $OrderRequestCopyWith(
          OrderRequest value, $Res Function(OrderRequest) then) =
      _$OrderRequestCopyWithImpl<$Res, OrderRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "comment") String comment,
      @JsonKey(name: "summa") int summa,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "skitka") int skitka,
      @JsonKey(name: "clientId") String clientId,
      @JsonKey(name: "login") String login,
      @JsonKey(name: "orderType") bool orderType,
      @JsonKey(name: "products") List<ProductRequest> products,
      @JsonKey(name: "type") int type,
      @JsonKey(name: "IsVazvrat") bool isVazvrat});
}

/// @nodoc
class _$OrderRequestCopyWithImpl<$Res, $Val extends OrderRequest>
    implements $OrderRequestCopyWith<$Res> {
  _$OrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? summa = null,
    Object? total = null,
    Object? skitka = null,
    Object? clientId = null,
    Object? login = null,
    Object? orderType = null,
    Object? products = null,
    Object? type = null,
    Object? isVazvrat = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skitka: null == skitka
          ? _value.skitka
          : skitka // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductRequest>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      isVazvrat: null == isVazvrat
          ? _value.isVazvrat
          : isVazvrat // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderRequestImplCopyWith<$Res>
    implements $OrderRequestCopyWith<$Res> {
  factory _$$OrderRequestImplCopyWith(
          _$OrderRequestImpl value, $Res Function(_$OrderRequestImpl) then) =
      __$$OrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "comment") String comment,
      @JsonKey(name: "summa") int summa,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "skitka") int skitka,
      @JsonKey(name: "clientId") String clientId,
      @JsonKey(name: "login") String login,
      @JsonKey(name: "orderType") bool orderType,
      @JsonKey(name: "products") List<ProductRequest> products,
      @JsonKey(name: "type") int type,
      @JsonKey(name: "IsVazvrat") bool isVazvrat});
}

/// @nodoc
class __$$OrderRequestImplCopyWithImpl<$Res>
    extends _$OrderRequestCopyWithImpl<$Res, _$OrderRequestImpl>
    implements _$$OrderRequestImplCopyWith<$Res> {
  __$$OrderRequestImplCopyWithImpl(
      _$OrderRequestImpl _value, $Res Function(_$OrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? summa = null,
    Object? total = null,
    Object? skitka = null,
    Object? clientId = null,
    Object? login = null,
    Object? orderType = null,
    Object? products = null,
    Object? type = null,
    Object? isVazvrat = null,
  }) {
    return _then(_$OrderRequestImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skitka: null == skitka
          ? _value.skitka
          : skitka // ignore: cast_nullable_to_non_nullable
              as int,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductRequest>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      isVazvrat: null == isVazvrat
          ? _value.isVazvrat
          : isVazvrat // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderRequestImpl implements _OrderRequest {
  const _$OrderRequestImpl(
      {@JsonKey(name: "comment") required this.comment,
      @JsonKey(name: "summa") required this.summa,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "skitka") required this.skitka,
      @JsonKey(name: "clientId") required this.clientId,
      @JsonKey(name: "login") required this.login,
      @JsonKey(name: "orderType") required this.orderType,
      @JsonKey(name: "products") required final List<ProductRequest> products,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "IsVazvrat") required this.isVazvrat})
      : _products = products;

  factory _$OrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderRequestImplFromJson(json);

  @override
  @JsonKey(name: "comment")
  final String comment;
  @override
  @JsonKey(name: "summa")
  final int summa;
  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "skitka")
  final int skitka;
  @override
  @JsonKey(name: "clientId")
  final String clientId;
  @override
  @JsonKey(name: "login")
  final String login;
  @override
  @JsonKey(name: "orderType")
  final bool orderType;
  final List<ProductRequest> _products;
  @override
  @JsonKey(name: "products")
  List<ProductRequest> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: "type")
  final int type;
  @override
  @JsonKey(name: "IsVazvrat")
  final bool isVazvrat;

  @override
  String toString() {
    return 'OrderRequest(comment: $comment, summa: $summa, total: $total, skitka: $skitka, clientId: $clientId, login: $login, orderType: $orderType, products: $products, type: $type, isVazvrat: $isVazvrat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderRequestImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.summa, summa) || other.summa == summa) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skitka, skitka) || other.skitka == skitka) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isVazvrat, isVazvrat) ||
                other.isVazvrat == isVazvrat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      comment,
      summa,
      total,
      skitka,
      clientId,
      login,
      orderType,
      const DeepCollectionEquality().hash(_products),
      type,
      isVazvrat);

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderRequestImplCopyWith<_$OrderRequestImpl> get copyWith =>
      __$$OrderRequestImplCopyWithImpl<_$OrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderRequestImplToJson(
      this,
    );
  }
}

abstract class _OrderRequest implements OrderRequest {
  const factory _OrderRequest(
      {@JsonKey(name: "comment") required final String comment,
      @JsonKey(name: "summa") required final int summa,
      @JsonKey(name: "total") required final int total,
      @JsonKey(name: "skitka") required final int skitka,
      @JsonKey(name: "clientId") required final String clientId,
      @JsonKey(name: "login") required final String login,
      @JsonKey(name: "orderType") required final bool orderType,
      @JsonKey(name: "products") required final List<ProductRequest> products,
      @JsonKey(name: "type") required final int type,
      @JsonKey(name: "IsVazvrat")
      required final bool isVazvrat}) = _$OrderRequestImpl;

  factory _OrderRequest.fromJson(Map<String, dynamic> json) =
      _$OrderRequestImpl.fromJson;

  @override
  @JsonKey(name: "comment")
  String get comment;
  @override
  @JsonKey(name: "summa")
  int get summa;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "skitka")
  int get skitka;
  @override
  @JsonKey(name: "clientId")
  String get clientId;
  @override
  @JsonKey(name: "login")
  String get login;
  @override
  @JsonKey(name: "orderType")
  bool get orderType;
  @override
  @JsonKey(name: "products")
  List<ProductRequest> get products;
  @override
  @JsonKey(name: "type")
  int get type;
  @override
  @JsonKey(name: "IsVazvrat")
  bool get isVazvrat;

  /// Create a copy of OrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderRequestImplCopyWith<_$OrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductRequest _$ProductRequestFromJson(Map<String, dynamic> json) {
  return _ProductRequest.fromJson(json);
}

/// @nodoc
mixin _$ProductRequest {
  @JsonKey(name: "tovar")
  String get tovar => throw _privateConstructorUsedError;
  @JsonKey(name: "pid")
  String get pid => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "summa")
  int get summa => throw _privateConstructorUsedError;

  /// Serializes this ProductRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductRequestCopyWith<ProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRequestCopyWith<$Res> {
  factory $ProductRequestCopyWith(
          ProductRequest value, $Res Function(ProductRequest) then) =
      _$ProductRequestCopyWithImpl<$Res, ProductRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "tovar") String tovar,
      @JsonKey(name: "pid") String pid,
      @JsonKey(name: "count") int count,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "summa") int summa});
}

/// @nodoc
class _$ProductRequestCopyWithImpl<$Res, $Val extends ProductRequest>
    implements $ProductRequestCopyWith<$Res> {
  _$ProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tovar = null,
    Object? pid = null,
    Object? count = null,
    Object? price = null,
    Object? summa = null,
  }) {
    return _then(_value.copyWith(
      tovar: null == tovar
          ? _value.tovar
          : tovar // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductRequestImplCopyWith<$Res>
    implements $ProductRequestCopyWith<$Res> {
  factory _$$ProductRequestImplCopyWith(_$ProductRequestImpl value,
          $Res Function(_$ProductRequestImpl) then) =
      __$$ProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tovar") String tovar,
      @JsonKey(name: "pid") String pid,
      @JsonKey(name: "count") int count,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "summa") int summa});
}

/// @nodoc
class __$$ProductRequestImplCopyWithImpl<$Res>
    extends _$ProductRequestCopyWithImpl<$Res, _$ProductRequestImpl>
    implements _$$ProductRequestImplCopyWith<$Res> {
  __$$ProductRequestImplCopyWithImpl(
      _$ProductRequestImpl _value, $Res Function(_$ProductRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tovar = null,
    Object? pid = null,
    Object? count = null,
    Object? price = null,
    Object? summa = null,
  }) {
    return _then(_$ProductRequestImpl(
      tovar: null == tovar
          ? _value.tovar
          : tovar // ignore: cast_nullable_to_non_nullable
              as String,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      summa: null == summa
          ? _value.summa
          : summa // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductRequestImpl implements _ProductRequest {
  const _$ProductRequestImpl(
      {@JsonKey(name: "tovar") required this.tovar,
      @JsonKey(name: "pid") required this.pid,
      @JsonKey(name: "count") required this.count,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "summa") required this.summa});

  factory _$ProductRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductRequestImplFromJson(json);

  @override
  @JsonKey(name: "tovar")
  final String tovar;
  @override
  @JsonKey(name: "pid")
  final String pid;
  @override
  @JsonKey(name: "count")
  final int count;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "summa")
  final int summa;

  @override
  String toString() {
    return 'ProductRequest(tovar: $tovar, pid: $pid, count: $count, price: $price, summa: $summa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductRequestImpl &&
            (identical(other.tovar, tovar) || other.tovar == tovar) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.summa, summa) || other.summa == summa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tovar, pid, count, price, summa);

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      __$$ProductRequestImplCopyWithImpl<_$ProductRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductRequestImplToJson(
      this,
    );
  }
}

abstract class _ProductRequest implements ProductRequest {
  const factory _ProductRequest(
      {@JsonKey(name: "tovar") required final String tovar,
      @JsonKey(name: "pid") required final String pid,
      @JsonKey(name: "count") required final int count,
      @JsonKey(name: "price") required final int price,
      @JsonKey(name: "summa") required final int summa}) = _$ProductRequestImpl;

  factory _ProductRequest.fromJson(Map<String, dynamic> json) =
      _$ProductRequestImpl.fromJson;

  @override
  @JsonKey(name: "tovar")
  String get tovar;
  @override
  @JsonKey(name: "pid")
  String get pid;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "summa")
  int get summa;

  /// Create a copy of ProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductRequestImplCopyWith<_$ProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
