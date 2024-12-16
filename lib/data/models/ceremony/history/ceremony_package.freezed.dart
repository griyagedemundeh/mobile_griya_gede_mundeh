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
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

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
  $Res call({String name, int id});
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
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({String name, int id});
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
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$CeremonyPackageImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyPackageImpl implements _CeremonyPackage {
  const _$CeremonyPackageImpl({required this.name, required this.id});

  factory _$CeremonyPackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyPackageImplFromJson(json);

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'CeremonyPackage(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyPackageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

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
      {required final String name,
      required final int id}) = _$CeremonyPackageImpl;

  factory _CeremonyPackage.fromJson(Map<String, dynamic> json) =
      _$CeremonyPackageImpl.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyPackageImplCopyWith<_$CeremonyPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
