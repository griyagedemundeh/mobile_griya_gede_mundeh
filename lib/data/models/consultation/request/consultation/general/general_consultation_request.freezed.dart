// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_consultation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralConsultationRequest _$GeneralConsultationRequestFromJson(
    Map<String, dynamic> json) {
  return _GeneralConsultationRequest.fromJson(json);
}

/// @nodoc
mixin _$GeneralConsultationRequest {
  String? get createdAt => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralConsultationRequestCopyWith<GeneralConsultationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralConsultationRequestCopyWith<$Res> {
  factory $GeneralConsultationRequestCopyWith(GeneralConsultationRequest value,
          $Res Function(GeneralConsultationRequest) then) =
      _$GeneralConsultationRequestCopyWithImpl<$Res,
          GeneralConsultationRequest>;
  @useResult
  $Res call(
      {String? createdAt,
      int consultationId,
      int userId,
      String userName,
      String? userPhoto});
}

/// @nodoc
class _$GeneralConsultationRequestCopyWithImpl<$Res,
        $Val extends GeneralConsultationRequest>
    implements $GeneralConsultationRequestCopyWith<$Res> {
  _$GeneralConsultationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? consultationId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$GeneralConsultationRequestImplCopyWith<$Res>
    implements $GeneralConsultationRequestCopyWith<$Res> {
  factory _$$GeneralConsultationRequestImplCopyWith(
          _$GeneralConsultationRequestImpl value,
          $Res Function(_$GeneralConsultationRequestImpl) then) =
      __$$GeneralConsultationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdAt,
      int consultationId,
      int userId,
      String userName,
      String? userPhoto});
}

/// @nodoc
class __$$GeneralConsultationRequestImplCopyWithImpl<$Res>
    extends _$GeneralConsultationRequestCopyWithImpl<$Res,
        _$GeneralConsultationRequestImpl>
    implements _$$GeneralConsultationRequestImplCopyWith<$Res> {
  __$$GeneralConsultationRequestImplCopyWithImpl(
      _$GeneralConsultationRequestImpl _value,
      $Res Function(_$GeneralConsultationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? consultationId = null,
    Object? userId = null,
    Object? userName = null,
    Object? userPhoto = freezed,
  }) {
    return _then(_$GeneralConsultationRequestImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$GeneralConsultationRequestImpl implements _GeneralConsultationRequest {
  const _$GeneralConsultationRequestImpl(
      {this.createdAt,
      required this.consultationId,
      required this.userId,
      required this.userName,
      this.userPhoto});

  factory _$GeneralConsultationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeneralConsultationRequestImplFromJson(json);

  @override
  final String? createdAt;
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
    return 'GeneralConsultationRequest(createdAt: $createdAt, consultationId: $consultationId, userId: $userId, userName: $userName, userPhoto: $userPhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralConsultationRequestImpl &&
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
      runtimeType, createdAt, consultationId, userId, userName, userPhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralConsultationRequestImplCopyWith<_$GeneralConsultationRequestImpl>
      get copyWith => __$$GeneralConsultationRequestImplCopyWithImpl<
          _$GeneralConsultationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralConsultationRequestImplToJson(
      this,
    );
  }
}

abstract class _GeneralConsultationRequest
    implements GeneralConsultationRequest {
  const factory _GeneralConsultationRequest(
      {final String? createdAt,
      required final int consultationId,
      required final int userId,
      required final String userName,
      final String? userPhoto}) = _$GeneralConsultationRequestImpl;

  factory _GeneralConsultationRequest.fromJson(Map<String, dynamic> json) =
      _$GeneralConsultationRequestImpl.fromJson;

  @override
  String? get createdAt;
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
  _$$GeneralConsultationRequestImplCopyWith<_$GeneralConsultationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
