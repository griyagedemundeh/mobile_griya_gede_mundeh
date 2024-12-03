// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Invoice _$InvoiceFromJson(Map<String, dynamic> json) {
  return _Invoice.fromJson(json);
}

/// @nodoc
mixin _$Invoice {
  String get id => throw _privateConstructorUsedError;
  String? get consultationId => throw _privateConstructorUsedError;
  int get ceremonyHistoryId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  String get paymentUrl => throw _privateConstructorUsedError;
  String get paymentToken => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  bool get isCash => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  InvoiceMember get invoiceMember => throw _privateConstructorUsedError;
  InvoiceCeremonyHistory get invoiceCeremonyHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCopyWith<Invoice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCopyWith<$Res> {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) then) =
      _$InvoiceCopyWithImpl<$Res, Invoice>;
  @useResult
  $Res call(
      {String id,
      String? consultationId,
      int ceremonyHistoryId,
      int memberId,
      int totalPrice,
      String paymentUrl,
      String paymentToken,
      String? paymentMethod,
      bool isCash,
      String status,
      DateTime createdAt,
      DateTime? paidAt,
      DateTime updatedAt,
      InvoiceMember invoiceMember,
      InvoiceCeremonyHistory invoiceCeremonyHistory});

  $InvoiceMemberCopyWith<$Res> get invoiceMember;
  $InvoiceCeremonyHistoryCopyWith<$Res> get invoiceCeremonyHistory;
}

/// @nodoc
class _$InvoiceCopyWithImpl<$Res, $Val extends Invoice>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = freezed,
    Object? ceremonyHistoryId = null,
    Object? memberId = null,
    Object? totalPrice = null,
    Object? paymentUrl = null,
    Object? paymentToken = null,
    Object? paymentMethod = freezed,
    Object? isCash = null,
    Object? status = null,
    Object? createdAt = null,
    Object? paidAt = freezed,
    Object? updatedAt = null,
    Object? invoiceMember = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentToken: null == paymentToken
          ? _value.paymentToken
          : paymentToken // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      isCash: null == isCash
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invoiceMember: null == invoiceMember
          ? _value.invoiceMember
          : invoiceMember // ignore: cast_nullable_to_non_nullable
              as InvoiceMember,
      invoiceCeremonyHistory: null == invoiceCeremonyHistory
          ? _value.invoiceCeremonyHistory
          : invoiceCeremonyHistory // ignore: cast_nullable_to_non_nullable
              as InvoiceCeremonyHistory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceMemberCopyWith<$Res> get invoiceMember {
    return $InvoiceMemberCopyWith<$Res>(_value.invoiceMember, (value) {
      return _then(_value.copyWith(invoiceMember: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCeremonyHistoryCopyWith<$Res> get invoiceCeremonyHistory {
    return $InvoiceCeremonyHistoryCopyWith<$Res>(_value.invoiceCeremonyHistory,
        (value) {
      return _then(_value.copyWith(invoiceCeremonyHistory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceImplCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$$InvoiceImplCopyWith(
          _$InvoiceImpl value, $Res Function(_$InvoiceImpl) then) =
      __$$InvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? consultationId,
      int ceremonyHistoryId,
      int memberId,
      int totalPrice,
      String paymentUrl,
      String paymentToken,
      String? paymentMethod,
      bool isCash,
      String status,
      DateTime createdAt,
      DateTime? paidAt,
      DateTime updatedAt,
      InvoiceMember invoiceMember,
      InvoiceCeremonyHistory invoiceCeremonyHistory});

  @override
  $InvoiceMemberCopyWith<$Res> get invoiceMember;
  @override
  $InvoiceCeremonyHistoryCopyWith<$Res> get invoiceCeremonyHistory;
}

/// @nodoc
class __$$InvoiceImplCopyWithImpl<$Res>
    extends _$InvoiceCopyWithImpl<$Res, _$InvoiceImpl>
    implements _$$InvoiceImplCopyWith<$Res> {
  __$$InvoiceImplCopyWithImpl(
      _$InvoiceImpl _value, $Res Function(_$InvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = freezed,
    Object? ceremonyHistoryId = null,
    Object? memberId = null,
    Object? totalPrice = null,
    Object? paymentUrl = null,
    Object? paymentToken = null,
    Object? paymentMethod = freezed,
    Object? isCash = null,
    Object? status = null,
    Object? createdAt = null,
    Object? paidAt = freezed,
    Object? updatedAt = null,
    Object? invoiceMember = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentToken: null == paymentToken
          ? _value.paymentToken
          : paymentToken // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      isCash: null == isCash
          ? _value.isCash
          : isCash // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      invoiceMember: null == invoiceMember
          ? _value.invoiceMember
          : invoiceMember // ignore: cast_nullable_to_non_nullable
              as InvoiceMember,
      invoiceCeremonyHistory: null == invoiceCeremonyHistory
          ? _value.invoiceCeremonyHistory
          : invoiceCeremonyHistory // ignore: cast_nullable_to_non_nullable
              as InvoiceCeremonyHistory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceImpl implements _Invoice {
  const _$InvoiceImpl(
      {required this.id,
      this.consultationId,
      required this.ceremonyHistoryId,
      required this.memberId,
      required this.totalPrice,
      required this.paymentUrl,
      required this.paymentToken,
      this.paymentMethod,
      required this.isCash,
      required this.status,
      required this.createdAt,
      this.paidAt,
      required this.updatedAt,
      required this.invoiceMember,
      required this.invoiceCeremonyHistory});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final String? consultationId;
  @override
  final int ceremonyHistoryId;
  @override
  final int memberId;
  @override
  final int totalPrice;
  @override
  final String paymentUrl;
  @override
  final String paymentToken;
  @override
  final String? paymentMethod;
  @override
  final bool isCash;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? paidAt;
  @override
  final DateTime updatedAt;
  @override
  final InvoiceMember invoiceMember;
  @override
  final InvoiceCeremonyHistory invoiceCeremonyHistory;

  @override
  String toString() {
    return 'Invoice(id: $id, consultationId: $consultationId, ceremonyHistoryId: $ceremonyHistoryId, memberId: $memberId, totalPrice: $totalPrice, paymentUrl: $paymentUrl, paymentToken: $paymentToken, paymentMethod: $paymentMethod, isCash: $isCash, status: $status, createdAt: $createdAt, paidAt: $paidAt, updatedAt: $updatedAt, invoiceMember: $invoiceMember, invoiceCeremonyHistory: $invoiceCeremonyHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.ceremonyHistoryId, ceremonyHistoryId) ||
                other.ceremonyHistoryId == ceremonyHistoryId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.paymentToken, paymentToken) ||
                other.paymentToken == paymentToken) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.isCash, isCash) || other.isCash == isCash) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.invoiceMember, invoiceMember) ||
                other.invoiceMember == invoiceMember) &&
            (identical(other.invoiceCeremonyHistory, invoiceCeremonyHistory) ||
                other.invoiceCeremonyHistory == invoiceCeremonyHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultationId,
      ceremonyHistoryId,
      memberId,
      totalPrice,
      paymentUrl,
      paymentToken,
      paymentMethod,
      isCash,
      status,
      createdAt,
      paidAt,
      updatedAt,
      invoiceMember,
      invoiceCeremonyHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      __$$InvoiceImplCopyWithImpl<_$InvoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceImplToJson(
      this,
    );
  }
}

abstract class _Invoice implements Invoice {
  const factory _Invoice(
          {required final String id,
          final String? consultationId,
          required final int ceremonyHistoryId,
          required final int memberId,
          required final int totalPrice,
          required final String paymentUrl,
          required final String paymentToken,
          final String? paymentMethod,
          required final bool isCash,
          required final String status,
          required final DateTime createdAt,
          final DateTime? paidAt,
          required final DateTime updatedAt,
          required final InvoiceMember invoiceMember,
          required final InvoiceCeremonyHistory invoiceCeremonyHistory}) =
      _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  String? get consultationId;
  @override
  int get ceremonyHistoryId;
  @override
  int get memberId;
  @override
  int get totalPrice;
  @override
  String get paymentUrl;
  @override
  String get paymentToken;
  @override
  String? get paymentMethod;
  @override
  bool get isCash;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get paidAt;
  @override
  DateTime get updatedAt;
  @override
  InvoiceMember get invoiceMember;
  @override
  InvoiceCeremonyHistory get invoiceCeremonyHistory;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
