// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int get id => throw _privateConstructorUsedError;
  int get consultationId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int? get ceremonyServiceId => throw _privateConstructorUsedError;
  int? get ceremonyPackageId => throw _privateConstructorUsedError;
  int? get addressId => throw _privateConstructorUsedError;
  String? get invoiceId => throw _privateConstructorUsedError;
  String? get messageType => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get ceremonyDate => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {int id,
      int consultationId,
      int userId,
      int? ceremonyServiceId,
      int? ceremonyPackageId,
      int? addressId,
      String? invoiceId,
      String? messageType,
      bool isAdmin,
      String message,
      String? title,
      String? totalPrice,
      String? ceremonyDate,
      String? address,
      String? paymentUrl,
      DateTime? createdAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

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
    Object? ceremonyServiceId = freezed,
    Object? ceremonyPackageId = freezed,
    Object? addressId = freezed,
    Object? invoiceId = freezed,
    Object? messageType = freezed,
    Object? isAdmin = null,
    Object? message = null,
    Object? title = freezed,
    Object? totalPrice = freezed,
    Object? ceremonyDate = freezed,
    Object? address = freezed,
    Object? paymentUrl = freezed,
    Object? createdAt = freezed,
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
      ceremonyServiceId: freezed == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyPackageId: freezed == ceremonyPackageId
          ? _value.ceremonyPackageId
          : ceremonyPackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyDate: freezed == ceremonyDate
          ? _value.ceremonyDate
          : ceremonyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int consultationId,
      int userId,
      int? ceremonyServiceId,
      int? ceremonyPackageId,
      int? addressId,
      String? invoiceId,
      String? messageType,
      bool isAdmin,
      String message,
      String? title,
      String? totalPrice,
      String? ceremonyDate,
      String? address,
      String? paymentUrl,
      DateTime? createdAt});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = null,
    Object? userId = null,
    Object? ceremonyServiceId = freezed,
    Object? ceremonyPackageId = freezed,
    Object? addressId = freezed,
    Object? invoiceId = freezed,
    Object? messageType = freezed,
    Object? isAdmin = null,
    Object? message = null,
    Object? title = freezed,
    Object? totalPrice = freezed,
    Object? ceremonyDate = freezed,
    Object? address = freezed,
    Object? paymentUrl = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MessageImpl(
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
      ceremonyServiceId: freezed == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyPackageId: freezed == ceremonyPackageId
          ? _value.ceremonyPackageId
          : ceremonyPackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageType: freezed == messageType
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyDate: freezed == ceremonyDate
          ? _value.ceremonyDate
          : ceremonyDate // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl with DiagnosticableTreeMixin implements _Message {
  const _$MessageImpl(
      {required this.id,
      required this.consultationId,
      required this.userId,
      this.ceremonyServiceId,
      this.ceremonyPackageId,
      this.addressId,
      this.invoiceId,
      this.messageType,
      required this.isAdmin,
      required this.message,
      this.title,
      this.totalPrice,
      this.ceremonyDate,
      this.address,
      this.paymentUrl,
      this.createdAt});

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int id;
  @override
  final int consultationId;
  @override
  final int userId;
  @override
  final int? ceremonyServiceId;
  @override
  final int? ceremonyPackageId;
  @override
  final int? addressId;
  @override
  final String? invoiceId;
  @override
  final String? messageType;
  @override
  final bool isAdmin;
  @override
  final String message;
  @override
  final String? title;
  @override
  final String? totalPrice;
  @override
  final String? ceremonyDate;
  @override
  final String? address;
  @override
  final String? paymentUrl;
  @override
  final DateTime? createdAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Message(id: $id, consultationId: $consultationId, userId: $userId, ceremonyServiceId: $ceremonyServiceId, ceremonyPackageId: $ceremonyPackageId, addressId: $addressId, invoiceId: $invoiceId, messageType: $messageType, isAdmin: $isAdmin, message: $message, title: $title, totalPrice: $totalPrice, ceremonyDate: $ceremonyDate, address: $address, paymentUrl: $paymentUrl, createdAt: $createdAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Message'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('consultationId', consultationId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('ceremonyServiceId', ceremonyServiceId))
      ..add(DiagnosticsProperty('ceremonyPackageId', ceremonyPackageId))
      ..add(DiagnosticsProperty('addressId', addressId))
      ..add(DiagnosticsProperty('invoiceId', invoiceId))
      ..add(DiagnosticsProperty('messageType', messageType))
      ..add(DiagnosticsProperty('isAdmin', isAdmin))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('ceremonyDate', ceremonyDate))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('paymentUrl', paymentUrl))
      ..add(DiagnosticsProperty('createdAt', createdAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(other.ceremonyPackageId, ceremonyPackageId) ||
                other.ceremonyPackageId == ceremonyPackageId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.ceremonyDate, ceremonyDate) ||
                other.ceremonyDate == ceremonyDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultationId,
      userId,
      ceremonyServiceId,
      ceremonyPackageId,
      addressId,
      invoiceId,
      messageType,
      isAdmin,
      message,
      title,
      totalPrice,
      ceremonyDate,
      address,
      paymentUrl,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final int id,
      required final int consultationId,
      required final int userId,
      final int? ceremonyServiceId,
      final int? ceremonyPackageId,
      final int? addressId,
      final String? invoiceId,
      final String? messageType,
      required final bool isAdmin,
      required final String message,
      final String? title,
      final String? totalPrice,
      final String? ceremonyDate,
      final String? address,
      final String? paymentUrl,
      final DateTime? createdAt}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  int get id;
  @override
  int get consultationId;
  @override
  int get userId;
  @override
  int? get ceremonyServiceId;
  @override
  int? get ceremonyPackageId;
  @override
  int? get addressId;
  @override
  String? get invoiceId;
  @override
  String? get messageType;
  @override
  bool get isAdmin;
  @override
  String get message;
  @override
  String? get title;
  @override
  String? get totalPrice;
  @override
  String? get ceremonyDate;
  @override
  String? get address;
  @override
  String? get paymentUrl;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
