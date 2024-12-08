// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_documentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyDocumentation _$CeremonyDocumentationFromJson(
    Map<String, dynamic> json) {
  return _CeremonyDocumentation.fromJson(json);
}

/// @nodoc
mixin _$CeremonyDocumentation {
  int get id => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyDocumentationCopyWith<CeremonyDocumentation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyDocumentationCopyWith<$Res> {
  factory $CeremonyDocumentationCopyWith(CeremonyDocumentation value,
          $Res Function(CeremonyDocumentation) then) =
      _$CeremonyDocumentationCopyWithImpl<$Res, CeremonyDocumentation>;
  @useResult
  $Res call(
      {int id,
      int ceremonyServiceId,
      String photo,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$CeremonyDocumentationCopyWithImpl<$Res,
        $Val extends CeremonyDocumentation>
    implements $CeremonyDocumentationCopyWith<$Res> {
  _$CeremonyDocumentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyServiceId = null,
    Object? photo = null,
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
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$CeremonyDocumentationImplCopyWith<$Res>
    implements $CeremonyDocumentationCopyWith<$Res> {
  factory _$$CeremonyDocumentationImplCopyWith(
          _$CeremonyDocumentationImpl value,
          $Res Function(_$CeremonyDocumentationImpl) then) =
      __$$CeremonyDocumentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ceremonyServiceId,
      String photo,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$CeremonyDocumentationImplCopyWithImpl<$Res>
    extends _$CeremonyDocumentationCopyWithImpl<$Res,
        _$CeremonyDocumentationImpl>
    implements _$$CeremonyDocumentationImplCopyWith<$Res> {
  __$$CeremonyDocumentationImplCopyWithImpl(_$CeremonyDocumentationImpl _value,
      $Res Function(_$CeremonyDocumentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyServiceId = null,
    Object? photo = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CeremonyDocumentationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$CeremonyDocumentationImpl implements _CeremonyDocumentation {
  const _$CeremonyDocumentationImpl(
      {required this.id,
      required this.ceremonyServiceId,
      required this.photo,
      required this.createdAt,
      required this.updatedAt});

  factory _$CeremonyDocumentationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyDocumentationImplFromJson(json);

  @override
  final int id;
  @override
  final int ceremonyServiceId;
  @override
  final String photo;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'CeremonyDocumentation(id: $id, ceremonyServiceId: $ceremonyServiceId, photo: $photo, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyDocumentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, ceremonyServiceId, photo, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyDocumentationImplCopyWith<_$CeremonyDocumentationImpl>
      get copyWith => __$$CeremonyDocumentationImplCopyWithImpl<
          _$CeremonyDocumentationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyDocumentationImplToJson(
      this,
    );
  }
}

abstract class _CeremonyDocumentation implements CeremonyDocumentation {
  const factory _CeremonyDocumentation(
      {required final int id,
      required final int ceremonyServiceId,
      required final String photo,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CeremonyDocumentationImpl;

  factory _CeremonyDocumentation.fromJson(Map<String, dynamic> json) =
      _$CeremonyDocumentationImpl.fromJson;

  @override
  int get id;
  @override
  int get ceremonyServiceId;
  @override
  String get photo;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyDocumentationImplCopyWith<_$CeremonyDocumentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
