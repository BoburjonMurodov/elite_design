// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  @JsonKey(name: "KategoriyaId")
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "Kategoriya")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "foto")
  String get photo => throw _privateConstructorUsedError;

  /// Serializes this CategoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res, CategoryItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "KategoriyaId") String categoryId,
      @JsonKey(name: "Kategoriya") String category,
      @JsonKey(name: "foto") String photo});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res, $Val extends CategoryItem>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? category = null,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemImplCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$CategoryItemImplCopyWith(
          _$CategoryItemImpl value, $Res Function(_$CategoryItemImpl) then) =
      __$$CategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "KategoriyaId") String categoryId,
      @JsonKey(name: "Kategoriya") String category,
      @JsonKey(name: "foto") String photo});
}

/// @nodoc
class __$$CategoryItemImplCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res, _$CategoryItemImpl>
    implements _$$CategoryItemImplCopyWith<$Res> {
  __$$CategoryItemImplCopyWithImpl(
      _$CategoryItemImpl _value, $Res Function(_$CategoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? category = null,
    Object? photo = null,
  }) {
    return _then(_$CategoryItemImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemImpl implements _CategoryItem {
  const _$CategoryItemImpl(
      {@JsonKey(name: "KategoriyaId") required this.categoryId,
      @JsonKey(name: "Kategoriya") required this.category,
      @JsonKey(name: "foto") required this.photo});

  factory _$CategoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemImplFromJson(json);

  @override
  @JsonKey(name: "KategoriyaId")
  final String categoryId;
  @override
  @JsonKey(name: "Kategoriya")
  final String category;
  @override
  @JsonKey(name: "foto")
  final String photo;

  @override
  String toString() {
    return 'CategoryItem(categoryId: $categoryId, category: $category, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, category, photo);

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      __$$CategoryItemImplCopyWithImpl<_$CategoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemImplToJson(
      this,
    );
  }
}

abstract class _CategoryItem implements CategoryItem {
  const factory _CategoryItem(
      {@JsonKey(name: "KategoriyaId") required final String categoryId,
      @JsonKey(name: "Kategoriya") required final String category,
      @JsonKey(name: "foto") required final String photo}) = _$CategoryItemImpl;

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$CategoryItemImpl.fromJson;

  @override
  @JsonKey(name: "KategoriyaId")
  String get categoryId;
  @override
  @JsonKey(name: "Kategoriya")
  String get category;
  @override
  @JsonKey(name: "foto")
  String get photo;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
