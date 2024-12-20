// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyPackage _$CeremonyPackageFromJson(Map<String, dynamic> json) {
  return _CeremonyPackage.fromJson(json);
}

/// @nodoc
mixin _$CeremonyPackage {
  int get id => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyPackageCopyWith<CeremonyPackage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyPackageCopyWith<$Res> {
  factory $CeremonyPackageCopyWith(
          CeremonyPackage value, $Res Function(CeremonyPackage) then) =
      _$CeremonyPackageCopyWithImpl<$Res, CeremonyPackage>;
  @useResult
  $Res call(
      {int id,
      int ceremonyServiceId,
      String? name,
      String description,
      int price,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$CeremonyPackageCopyWithImpl<$Res, $Val extends CeremonyPackage>
    implements $CeremonyPackageCopyWith<$Res> {
  _$CeremonyPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyServiceId = null,
    Object? name = freezed,
    Object? description = null,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$CeremonyPackageImplCopyWith<$Res>
    implements $CeremonyPackageCopyWith<$Res> {
  factory _$$CeremonyPackageImplCopyWith(_$CeremonyPackageImpl value,
          $Res Function(_$CeremonyPackageImpl) then) =
      __$$CeremonyPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ceremonyServiceId,
      String? name,
      String description,
      int price,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$CeremonyPackageImplCopyWithImpl<$Res>
    extends _$CeremonyPackageCopyWithImpl<$Res, _$CeremonyPackageImpl>
    implements _$$CeremonyPackageImplCopyWith<$Res> {
  __$$CeremonyPackageImplCopyWithImpl(
      _$CeremonyPackageImpl _value, $Res Function(_$CeremonyPackageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyServiceId = null,
    Object? name = freezed,
    Object? description = null,
    Object? price = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CeremonyPackageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$CeremonyPackageImpl implements _CeremonyPackage {
  const _$CeremonyPackageImpl(
      {required this.id,
      required this.ceremonyServiceId,
      this.name,
      required this.description,
      required this.price,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt});

  factory _$CeremonyPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyPackageImplFromJson(json);

  @override
  final int id;
  @override
  final int ceremonyServiceId;
  @override
  final String? name;
  @override
  final String description;
  @override
  final int price;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CeremonyPackage(id: $id, ceremonyServiceId: $ceremonyServiceId, name: $name, description: $description, price: $price, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ceremonyServiceId, name,
      description, price, isActive, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyPackageImplCopyWith<_$CeremonyPackageImpl> get copyWith =>
      __$$CeremonyPackageImplCopyWithImpl<_$CeremonyPackageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyPackageImplToJson(
      this,
    );
  }
}

abstract class _CeremonyPackage implements CeremonyPackage {
  const factory _CeremonyPackage(
      {required final int id,
      required final int ceremonyServiceId,
      final String? name,
      required final String description,
      required final int price,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CeremonyPackageImpl;

  factory _CeremonyPackage.fromJson(Map<String, dynamic> json) =
      _$CeremonyPackageImpl.fromJson;

  @override
  int get id;
  @override
  int get ceremonyServiceId;
  @override
  String? get name;
  @override
  String get description;
  @override
  int get price;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyPackageImplCopyWith<_$CeremonyPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
