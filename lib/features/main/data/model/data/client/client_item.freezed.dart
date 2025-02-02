// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientItem _$ClientItemFromJson(Map<String, dynamic> json) {
  return _ClientItem.fromJson(json);
}

/// @nodoc
mixin _$ClientItem {
  @JsonKey(name: "client")
  String get client => throw _privateConstructorUsedError;
  @JsonKey(name: "clientID")
  int get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: "sum")
  String get sum => throw _privateConstructorUsedError;
  @JsonKey(name: "dollar")
  String get dollar => throw _privateConstructorUsedError;

  /// Serializes this ClientItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClientItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClientItemCopyWith<ClientItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientItemCopyWith<$Res> {
  factory $ClientItemCopyWith(
          ClientItem value, $Res Function(ClientItem) then) =
      _$ClientItemCopyWithImpl<$Res, ClientItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "client") String client,
      @JsonKey(name: "clientID") int clientId,
      @JsonKey(name: "sum") String sum,
      @JsonKey(name: "dollar") String dollar});
}

/// @nodoc
class _$ClientItemCopyWithImpl<$Res, $Val extends ClientItem>
    implements $ClientItemCopyWith<$Res> {
  _$ClientItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClientItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? clientId = null,
    Object? sum = null,
    Object? dollar = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      dollar: null == dollar
          ? _value.dollar
          : dollar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientItemImplCopyWith<$Res>
    implements $ClientItemCopyWith<$Res> {
  factory _$$ClientItemImplCopyWith(
          _$ClientItemImpl value, $Res Function(_$ClientItemImpl) then) =
      __$$ClientItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "client") String client,
      @JsonKey(name: "clientID") int clientId,
      @JsonKey(name: "sum") String sum,
      @JsonKey(name: "dollar") String dollar});
}

/// @nodoc
class __$$ClientItemImplCopyWithImpl<$Res>
    extends _$ClientItemCopyWithImpl<$Res, _$ClientItemImpl>
    implements _$$ClientItemImplCopyWith<$Res> {
  __$$ClientItemImplCopyWithImpl(
      _$ClientItemImpl _value, $Res Function(_$ClientItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClientItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
    Object? clientId = null,
    Object? sum = null,
    Object? dollar = null,
  }) {
    return _then(_$ClientItemImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      dollar: null == dollar
          ? _value.dollar
          : dollar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientItemImpl implements _ClientItem {
  const _$ClientItemImpl(
      {@JsonKey(name: "client") required this.client,
      @JsonKey(name: "clientID") required this.clientId,
      @JsonKey(name: "sum") required this.sum,
      @JsonKey(name: "dollar") required this.dollar});

  factory _$ClientItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientItemImplFromJson(json);

  @override
  @JsonKey(name: "client")
  final String client;
  @override
  @JsonKey(name: "clientID")
  final int clientId;
  @override
  @JsonKey(name: "sum")
  final String sum;
  @override
  @JsonKey(name: "dollar")
  final String dollar;

  @override
  String toString() {
    return 'ClientItem(client: $client, clientId: $clientId, sum: $sum, dollar: $dollar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientItemImpl &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.dollar, dollar) || other.dollar == dollar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, client, clientId, sum, dollar);

  /// Create a copy of ClientItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientItemImplCopyWith<_$ClientItemImpl> get copyWith =>
      __$$ClientItemImplCopyWithImpl<_$ClientItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientItemImplToJson(
      this,
    );
  }
}

abstract class _ClientItem implements ClientItem {
  const factory _ClientItem(
          {@JsonKey(name: "client") required final String client,
          @JsonKey(name: "clientID") required final int clientId,
          @JsonKey(name: "sum") required final String sum,
          @JsonKey(name: "dollar") required final String dollar}) =
      _$ClientItemImpl;

  factory _ClientItem.fromJson(Map<String, dynamic> json) =
      _$ClientItemImpl.fromJson;

  @override
  @JsonKey(name: "client")
  String get client;
  @override
  @JsonKey(name: "clientID")
  int get clientId;
  @override
  @JsonKey(name: "sum")
  String get sum;
  @override
  @JsonKey(name: "dollar")
  String get dollar;

  /// Create a copy of ClientItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClientItemImplCopyWith<_$ClientItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
