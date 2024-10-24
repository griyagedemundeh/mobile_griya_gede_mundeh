// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyCategory _$CeremonyCategoryFromJson(Map<String, dynamic> json) {
  return _CeremonyCategory.fromJson(json);
}

/// @nodoc
mixin _$CeremonyCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyCategoryCopyWith<CeremonyCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyCategoryCopyWith<$Res> {
  factory $CeremonyCategoryCopyWith(
          CeremonyCategory value, $Res Function(CeremonyCategory) then) =
      _$CeremonyCategoryCopyWithImpl<$Res, CeremonyCategory>;
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      String description,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$CeremonyCategoryCopyWithImpl<$Res, $Val extends CeremonyCategory>
    implements $CeremonyCategoryCopyWith<$Res> {
  _$CeremonyCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? description = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CeremonyCategoryImplCopyWith<$Res>
    implements $CeremonyCategoryCopyWith<$Res> {
  factory _$$CeremonyCategoryImplCopyWith(_$CeremonyCategoryImpl value,
          $Res Function(_$CeremonyCategoryImpl) then) =
      __$$CeremonyCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String icon,
      String description,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$CeremonyCategoryImplCopyWithImpl<$Res>
    extends _$CeremonyCategoryCopyWithImpl<$Res, _$CeremonyCategoryImpl>
    implements _$$CeremonyCategoryImplCopyWith<$Res> {
  __$$CeremonyCategoryImplCopyWithImpl(_$CeremonyCategoryImpl _value,
      $Res Function(_$CeremonyCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? description = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CeremonyCategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyCategoryImpl implements _CeremonyCategory {
  _$CeremonyCategoryImpl(
      {required this.id,
      required this.name,
      required this.icon,
      required this.description,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt});

  factory _$CeremonyCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyCategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String icon;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CeremonyCategory(id: $id, name: $name, icon: $icon, description: $description, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, icon, description, isActive, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyCategoryImplCopyWith<_$CeremonyCategoryImpl> get copyWith =>
      __$$CeremonyCategoryImplCopyWithImpl<_$CeremonyCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyCategoryImplToJson(
      this,
    );
  }
}

abstract class _CeremonyCategory implements CeremonyCategory {
  factory _CeremonyCategory(
      {required final int id,
      required final String name,
      required final String icon,
      required final String description,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CeremonyCategoryImpl;

  factory _CeremonyCategory.fromJson(Map<String, dynamic> json) =
      _$CeremonyCategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get icon;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyCategoryImplCopyWith<_$CeremonyCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
