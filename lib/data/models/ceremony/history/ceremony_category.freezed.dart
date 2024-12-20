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
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

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
  $Res call({String name, int id});
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
abstract class _$$CeremonyCategoryImplCopyWith<$Res>
    implements $CeremonyCategoryCopyWith<$Res> {
  factory _$$CeremonyCategoryImplCopyWith(_$CeremonyCategoryImpl value,
          $Res Function(_$CeremonyCategoryImpl) then) =
      __$$CeremonyCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int id});
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
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$CeremonyCategoryImpl(
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
class _$CeremonyCategoryImpl implements _CeremonyCategory {
  const _$CeremonyCategoryImpl({required this.name, required this.id});

  factory _$CeremonyCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyCategoryImplFromJson(json);

  @override
  final String name;
  @override
  final int id;

  @override
  String toString() {
    return 'CeremonyCategory(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyCategoryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

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
  const factory _CeremonyCategory(
      {required final String name,
      required final int id}) = _$CeremonyCategoryImpl;

  factory _CeremonyCategory.fromJson(Map<String, dynamic> json) =
      _$CeremonyCategoryImpl.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyCategoryImplCopyWith<_$CeremonyCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
