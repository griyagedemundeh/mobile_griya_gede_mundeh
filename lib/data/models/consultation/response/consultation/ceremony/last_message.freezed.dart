// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastMessage _$LastMessageFromJson(Map<String, dynamic> json) {
  return _LastMessage.fromJson(json);
}

/// @nodoc
mixin _$LastMessage {
  int get id => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  String get messageType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastMessageCopyWith<LastMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastMessageCopyWith<$Res> {
  factory $LastMessageCopyWith(
          LastMessage value, $Res Function(LastMessage) then) =
      _$LastMessageCopyWithImpl<$Res, LastMessage>;
  @useResult
  $Res call(
      {int id,
      int consultationId,
      int userId,
      bool isAdmin,
      String messageType,
      String message,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$LastMessageCopyWithImpl<$Res, $Val extends LastMessage>
    implements $LastMessageCopyWith<$Res> {
  _$LastMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? isAdmin = null,
    Object? messageType = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
abstract class _$$LastMessageImplCopyWith<$Res>
    implements $LastMessageCopyWith<$Res> {
  factory _$$LastMessageImplCopyWith(
          _$LastMessageImpl value, $Res Function(_$LastMessageImpl) then) =
      __$$LastMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int consultationId,
      int userId,
      bool isAdmin,
      String messageType,
      String message,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$LastMessageImplCopyWithImpl<$Res>
    extends _$LastMessageCopyWithImpl<$Res, _$LastMessageImpl>
    implements _$$LastMessageImplCopyWith<$Res> {
  __$$LastMessageImplCopyWithImpl(
      _$LastMessageImpl _value, $Res Function(_$LastMessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? isAdmin = null,
    Object? messageType = null,
    Object? message = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$LastMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      messageType: null == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
class _$LastMessageImpl implements _LastMessage {
  const _$LastMessageImpl(
      {required this.id,
      required this.consultationId,
      required this.userId,
      required this.isAdmin,
      required this.messageType,
      required this.message,
      required this.createdAt,
      required this.updatedAt});

  factory _$LastMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastMessageImplFromJson(json);

  @override
  final int id;
  @override
  final int consultationId;
  @override
  final int userId;
  @override
  final bool isAdmin;
  @override
  final String messageType;
  @override
  final String message;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'LastMessage(id: $id, consultationId: $consultationId, userId: $userId, isAdmin: $isAdmin, messageType: $messageType, message: $message, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, consultationId, userId,
      isAdmin, messageType, message, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastMessageImplCopyWith<_$LastMessageImpl> get copyWith =>
      __$$LastMessageImplCopyWithImpl<_$LastMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastMessageImplToJson(
      this,
    );
  }
}

abstract class _LastMessage implements LastMessage {
  const factory _LastMessage(
      {required final int id,
      required final int consultationId,
      required final int userId,
      required final bool isAdmin,
      required final String messageType,
      required final String message,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$LastMessageImpl;

  factory _LastMessage.fromJson(Map<String, dynamic> json) =
      _$LastMessageImpl.fromJson;

  @override
  int get id;
  @override
  int get consultationId;
  @override
  int get userId;
  @override
  bool get isAdmin;
  @override
  String get messageType;
  @override
  String get message;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$LastMessageImplCopyWith<_$LastMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
