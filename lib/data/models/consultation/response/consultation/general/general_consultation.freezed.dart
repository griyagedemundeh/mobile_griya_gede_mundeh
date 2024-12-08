// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralConsultation _$GeneralConsultationFromJson(Map<String, dynamic> json) {
  return _GeneralConsultation.fromJson(json);
}

/// @nodoc
mixin _$GeneralConsultation {
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralConsultationCopyWith<GeneralConsultation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralConsultationCopyWith<$Res> {
  factory $GeneralConsultationCopyWith(
          GeneralConsultation value, $Res Function(GeneralConsultation) then) =
      _$GeneralConsultationCopyWithImpl<$Res, GeneralConsultation>;
  @useResult
  $Res call(
      {int id,
      String createdAt,
      int consultationId,
      int userId,
      String userName,
      String? userPhoto});
}

/// @nodoc
class _$GeneralConsultationCopyWithImpl<$Res, $Val extends GeneralConsultation>
    implements $GeneralConsultationCopyWith<$Res> {
  _$GeneralConsultationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralConsultationImplCopyWith<$Res>
    implements $GeneralConsultationCopyWith<$Res> {
  factory _$$GeneralConsultationImplCopyWith(_$GeneralConsultationImpl value,
          $Res Function(_$GeneralConsultationImpl) then) =
      __$$GeneralConsultationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String createdAt,
      int consultationId,
      int userId,
      String userName,
      String? userPhoto});
}

/// @nodoc
class __$$GeneralConsultationImplCopyWithImpl<$Res>
    extends _$GeneralConsultationCopyWithImpl<$Res, _$GeneralConsultationImpl>
    implements _$$GeneralConsultationImplCopyWith<$Res> {
  __$$GeneralConsultationImplCopyWithImpl(_$GeneralConsultationImpl _value,
      $Res Function(_$GeneralConsultationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = freezed,
  }) {
    return _then(_$GeneralConsultationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralConsultationImpl implements _GeneralConsultation {
  const _$GeneralConsultationImpl(
      {required this.id,
      required this.createdAt,
      required this.consultationId,
      required this.userId,
      required this.userName,
      this.userPhoto});

  factory _$GeneralConsultationImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralConsultationImplFromJson(json);

  @override
  final int id;
  @override
  final String createdAt;
  @override
  final int consultationId;
  @override
  final int userId;
  @override
  final String userName;
  @override
  final String? userPhoto;

  @override
  String toString() {
    return 'GeneralConsultation(id: $id, createdAt: $createdAt, consultationId: $consultationId, userId: $userId, userName: $userName, userPhoto: $userPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralConsultationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhoto, userPhoto) ||
                other.userPhoto == userPhoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, consultationId, userId, userName, userPhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralConsultationImplCopyWith<_$GeneralConsultationImpl> get copyWith =>
      __$$GeneralConsultationImplCopyWithImpl<_$GeneralConsultationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralConsultationImplToJson(
      this,
    );
  }
}

abstract class _GeneralConsultation implements GeneralConsultation {
  const factory _GeneralConsultation(
      {required final int id,
      required final String createdAt,
      required final int consultationId,
      required final int userId,
      required final String userName,
      final String? userPhoto}) = _$GeneralConsultationImpl;

  factory _GeneralConsultation.fromJson(Map<String, dynamic> json) =
      _$GeneralConsultationImpl.fromJson;

  @override
  int get id;
  @override
  String get createdAt;
  @override
  int get consultationId;
  @override
  int get userId;
  @override
  String get userName;
  @override
  String? get userPhoto;
  @override
  @JsonKey(ignore: true)
  _$$GeneralConsultationImplCopyWith<_$GeneralConsultationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
