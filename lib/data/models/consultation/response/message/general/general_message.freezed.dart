// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralMessage _$GeneralMessageFromJson(Map<String, dynamic> json) {
  return _GeneralMessage.fromJson(json);
}

/// @nodoc
mixin _$GeneralMessage {
  int get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralMessageCopyWith<GeneralMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralMessageCopyWith<$Res> {
  factory $GeneralMessageCopyWith(
          GeneralMessage value, $Res Function(GeneralMessage) then) =
      _$GeneralMessageCopyWithImpl<$Res, GeneralMessage>;
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      int consultationId,
      int userId,
      String message,
      bool isAdmin});
}

/// @nodoc
class _$GeneralMessageCopyWithImpl<$Res, $Val extends GeneralMessage>
    implements $GeneralMessageCopyWith<$Res> {
  _$GeneralMessageCopyWithImpl(this._value, this._then);

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
    Object? message = null,
    Object? isAdmin = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$GeneralMessageImplCopyWith<$Res>
    implements $GeneralMessageCopyWith<$Res> {
  factory _$$GeneralMessageImplCopyWith(_$GeneralMessageImpl value,
          $Res Function(_$GeneralMessageImpl) then) =
      __$$GeneralMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime createdAt,
      int consultationId,
      int userId,
      String message,
      bool isAdmin});
}

/// @nodoc
class __$$GeneralMessageImplCopyWithImpl<$Res>
    extends _$GeneralMessageCopyWithImpl<$Res, _$GeneralMessageImpl>
    implements _$$GeneralMessageImplCopyWith<$Res> {
  __$$GeneralMessageImplCopyWithImpl(
      _$GeneralMessageImpl _value, $Res Function(_$GeneralMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? message = null,
    Object? isAdmin = null,
  }) {
    return _then(_$GeneralMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
class _$GeneralMessageImpl implements _GeneralMessage {
  const _$GeneralMessageImpl(
      {required this.id,
      required this.createdAt,
      required this.consultationId,
      required this.userId,
      required this.message,
      required this.isAdmin});

  factory _$GeneralMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralMessageImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime createdAt;
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
    return 'GeneralMessage(id: $id, createdAt: $createdAt, consultationId: $consultationId, userId: $userId, message: $message, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
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
      runtimeType, id, createdAt, consultationId, userId, message, isAdmin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralMessageImplCopyWith<_$GeneralMessageImpl> get copyWith =>
      __$$GeneralMessageImplCopyWithImpl<_$GeneralMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralMessageImplToJson(
      this,
    );
  }
}

abstract class _GeneralMessage implements GeneralMessage {
  const factory _GeneralMessage(
      {required final int id,
      required final DateTime createdAt,
      required final int consultationId,
      required final int userId,
      required final String message,
      required final bool isAdmin}) = _$GeneralMessageImpl;

  factory _GeneralMessage.fromJson(Map<String, dynamic> json) =
      _$GeneralMessageImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get createdAt;
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
  _$$GeneralMessageImplCopyWith<_$GeneralMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
