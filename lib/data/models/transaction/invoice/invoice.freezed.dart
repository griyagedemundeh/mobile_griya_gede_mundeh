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
  int get memberId => throw _privateConstructorUsedError;
  int get ceremonyHistoryId => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
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
      int memberId,
      int ceremonyHistoryId,
      int totalPrice,
      String status,
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
    Object? memberId = null,
    Object? ceremonyHistoryId = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? invoiceMember = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
      int memberId,
      int ceremonyHistoryId,
      int totalPrice,
      String status,
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
    Object? memberId = null,
    Object? ceremonyHistoryId = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? invoiceMember = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_$InvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.memberId,
      required this.ceremonyHistoryId,
      required this.totalPrice,
      required this.status,
      required this.invoiceMember,
      required this.invoiceCeremonyHistory});

  factory _$InvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final int memberId;
  @override
  final int ceremonyHistoryId;
  @override
  final int totalPrice;
  @override
  final String status;
  @override
  final InvoiceMember invoiceMember;
  @override
  final InvoiceCeremonyHistory invoiceCeremonyHistory;

  @override
  String toString() {
    return 'Invoice(id: $id, memberId: $memberId, ceremonyHistoryId: $ceremonyHistoryId, totalPrice: $totalPrice, status: $status, invoiceMember: $invoiceMember, invoiceCeremonyHistory: $invoiceCeremonyHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.ceremonyHistoryId, ceremonyHistoryId) ||
                other.ceremonyHistoryId == ceremonyHistoryId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invoiceMember, invoiceMember) ||
                other.invoiceMember == invoiceMember) &&
            (identical(other.invoiceCeremonyHistory, invoiceCeremonyHistory) ||
                other.invoiceCeremonyHistory == invoiceCeremonyHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, ceremonyHistoryId,
      totalPrice, status, invoiceMember, invoiceCeremonyHistory);

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
          required final int memberId,
          required final int ceremonyHistoryId,
          required final int totalPrice,
          required final String status,
          required final InvoiceMember invoiceMember,
          required final InvoiceCeremonyHistory invoiceCeremonyHistory}) =
      _$InvoiceImpl;

  factory _Invoice.fromJson(Map<String, dynamic> json) = _$InvoiceImpl.fromJson;

  @override
  String get id;
  @override
  int get memberId;
  @override
  int get ceremonyHistoryId;
  @override
  int get totalPrice;
  @override
  String get status;
  @override
  InvoiceMember get invoiceMember;
  @override
  InvoiceCeremonyHistory get invoiceCeremonyHistory;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceImplCopyWith<_$InvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
