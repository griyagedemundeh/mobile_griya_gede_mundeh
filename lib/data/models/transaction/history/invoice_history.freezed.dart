// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceHistory _$InvoiceHistoryFromJson(Map<String, dynamic> json) {
  return _InvoiceHistory.fromJson(json);
}

/// @nodoc
mixin _$InvoiceHistory {
  String get id => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  int get ceremonyHistoryId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  InvoiceCeremonyHistory get invoiceCeremonyHistory =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceHistoryCopyWith<InvoiceHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceHistoryCopyWith<$Res> {
  factory $InvoiceHistoryCopyWith(
          InvoiceHistory value, $Res Function(InvoiceHistory) then) =
      _$InvoiceHistoryCopyWithImpl<$Res, InvoiceHistory>;
  @useResult
  $Res call(
      {String id,
      int totalPrice,
      int ceremonyHistoryId,
      String status,
      InvoiceCeremonyHistory invoiceCeremonyHistory});

  $InvoiceCeremonyHistoryCopyWith<$Res> get invoiceCeremonyHistory;
}

/// @nodoc
class _$InvoiceHistoryCopyWithImpl<$Res, $Val extends InvoiceHistory>
    implements $InvoiceHistoryCopyWith<$Res> {
  _$InvoiceHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalPrice = null,
    Object? ceremonyHistoryId = null,
    Object? status = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCeremonyHistory: null == invoiceCeremonyHistory
          ? _value.invoiceCeremonyHistory
          : invoiceCeremonyHistory // ignore: cast_nullable_to_non_nullable
              as InvoiceCeremonyHistory,
    ) as $Val);
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
abstract class _$$InvoiceHistoryImplCopyWith<$Res>
    implements $InvoiceHistoryCopyWith<$Res> {
  factory _$$InvoiceHistoryImplCopyWith(_$InvoiceHistoryImpl value,
          $Res Function(_$InvoiceHistoryImpl) then) =
      __$$InvoiceHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int totalPrice,
      int ceremonyHistoryId,
      String status,
      InvoiceCeremonyHistory invoiceCeremonyHistory});

  @override
  $InvoiceCeremonyHistoryCopyWith<$Res> get invoiceCeremonyHistory;
}

/// @nodoc
class __$$InvoiceHistoryImplCopyWithImpl<$Res>
    extends _$InvoiceHistoryCopyWithImpl<$Res, _$InvoiceHistoryImpl>
    implements _$$InvoiceHistoryImplCopyWith<$Res> {
  __$$InvoiceHistoryImplCopyWithImpl(
      _$InvoiceHistoryImpl _value, $Res Function(_$InvoiceHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalPrice = null,
    Object? ceremonyHistoryId = null,
    Object? status = null,
    Object? invoiceCeremonyHistory = null,
  }) {
    return _then(_$InvoiceHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceCeremonyHistory: null == invoiceCeremonyHistory
          ? _value.invoiceCeremonyHistory
          : invoiceCeremonyHistory // ignore: cast_nullable_to_non_nullable
              as InvoiceCeremonyHistory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceHistoryImpl implements _InvoiceHistory {
  const _$InvoiceHistoryImpl(
      {required this.id,
      required this.totalPrice,
      required this.ceremonyHistoryId,
      required this.status,
      required this.invoiceCeremonyHistory});

  factory _$InvoiceHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceHistoryImplFromJson(json);

  @override
  final String id;
  @override
  final int totalPrice;
  @override
  final int ceremonyHistoryId;
  @override
  final String status;
  @override
  final InvoiceCeremonyHistory invoiceCeremonyHistory;

  @override
  String toString() {
    return 'InvoiceHistory(id: $id, totalPrice: $totalPrice, ceremonyHistoryId: $ceremonyHistoryId, status: $status, invoiceCeremonyHistory: $invoiceCeremonyHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.ceremonyHistoryId, ceremonyHistoryId) ||
                other.ceremonyHistoryId == ceremonyHistoryId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.invoiceCeremonyHistory, invoiceCeremonyHistory) ||
                other.invoiceCeremonyHistory == invoiceCeremonyHistory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, totalPrice,
      ceremonyHistoryId, status, invoiceCeremonyHistory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceHistoryImplCopyWith<_$InvoiceHistoryImpl> get copyWith =>
      __$$InvoiceHistoryImplCopyWithImpl<_$InvoiceHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceHistoryImplToJson(
      this,
    );
  }
}

abstract class _InvoiceHistory implements InvoiceHistory {
  const factory _InvoiceHistory(
          {required final String id,
          required final int totalPrice,
          required final int ceremonyHistoryId,
          required final String status,
          required final InvoiceCeremonyHistory invoiceCeremonyHistory}) =
      _$InvoiceHistoryImpl;

  factory _InvoiceHistory.fromJson(Map<String, dynamic> json) =
      _$InvoiceHistoryImpl.fromJson;

  @override
  String get id;
  @override
  int get totalPrice;
  @override
  int get ceremonyHistoryId;
  @override
  String get status;
  @override
  InvoiceCeremonyHistory get invoiceCeremonyHistory;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceHistoryImplCopyWith<_$InvoiceHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
