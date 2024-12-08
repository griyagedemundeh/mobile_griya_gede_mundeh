// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_message_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralMessageRequest _$GeneralMessageRequestFromJson(
    Map<String, dynamic> json) {
  return _GeneralMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$GeneralMessageRequest {
  String? get createdAt => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralMessageRequestCopyWith<GeneralMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralMessageRequestCopyWith<$Res> {
  factory $GeneralMessageRequestCopyWith(GeneralMessageRequest value,
          $Res Function(GeneralMessageRequest) then) =
      _$GeneralMessageRequestCopyWithImpl<$Res, GeneralMessageRequest>;
  @useResult
  $Res call(
      {String? createdAt,
      int consultationId,
      int userId,
      String message,
      bool isAdmin});
}

/// @nodoc
class _$GeneralMessageRequestCopyWithImpl<$Res,
        $Val extends GeneralMessageRequest>
    implements $GeneralMessageRequestCopyWith<$Res> {
  _$GeneralMessageRequestCopyWithImpl(this._value, this._then);

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
    Object? message = null,
    Object? isAdmin = null,
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralMessageRequestImplCopyWith<$Res>
    implements $GeneralMessageRequestCopyWith<$Res> {
  factory _$$GeneralMessageRequestImplCopyWith(
          _$GeneralMessageRequestImpl value,
          $Res Function(_$GeneralMessageRequestImpl) then) =
      __$$GeneralMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdAt,
      int consultationId,
      int userId,
      String message,
      bool isAdmin});
}

/// @nodoc
class __$$GeneralMessageRequestImplCopyWithImpl<$Res>
    extends _$GeneralMessageRequestCopyWithImpl<$Res,
        _$GeneralMessageRequestImpl>
    implements _$$GeneralMessageRequestImplCopyWith<$Res> {
  __$$GeneralMessageRequestImplCopyWithImpl(_$GeneralMessageRequestImpl _value,
      $Res Function(_$GeneralMessageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? consultationId = null,
    Object? userId = null,
    Object? message = null,
    Object? isAdmin = null,
  }) {
    return _then(_$GeneralMessageRequestImpl(
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
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralMessageRequestImpl implements _GeneralMessageRequest {
  const _$GeneralMessageRequestImpl(
      {this.createdAt,
      required this.consultationId,
      required this.userId,
      required this.message,
      required this.isAdmin});

  factory _$GeneralMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralMessageRequestImplFromJson(json);

  @override
  final String? createdAt;
  @override
  final int consultationId;
  @override
  final int userId;
  @override
  final String message;
  @override
  final bool isAdmin;

  @override
  String toString() {
    return 'GeneralMessageRequest(createdAt: $createdAt, consultationId: $consultationId, userId: $userId, message: $message, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralMessageRequestImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, consultationId, userId, message, isAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralMessageRequestImplCopyWith<_$GeneralMessageRequestImpl>
      get copyWith => __$$GeneralMessageRequestImplCopyWithImpl<
          _$GeneralMessageRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralMessageRequestImplToJson(
      this,
    );
  }
}

abstract class _GeneralMessageRequest implements GeneralMessageRequest {
  const factory _GeneralMessageRequest(
      {final String? createdAt,
      required final int consultationId,
      required final int userId,
      required final String message,
      required final bool isAdmin}) = _$GeneralMessageRequestImpl;

  factory _GeneralMessageRequest.fromJson(Map<String, dynamic> json) =
      _$GeneralMessageRequestImpl.fromJson;

  @override
  String? get createdAt;
  @override
  int get consultationId;
  @override
  int get userId;
  @override
  String get message;
  @override
  bool get isAdmin;
  @override
  @JsonKey(ignore: true)
  _$$GeneralMessageRequestImplCopyWith<_$GeneralMessageRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
