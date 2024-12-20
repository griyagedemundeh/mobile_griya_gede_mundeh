// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_invoice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyInvoice _$CeremonyInvoiceFromJson(Map<String, dynamic> json) {
  return _CeremonyInvoice.fromJson(json);
}

/// @nodoc
mixin _$CeremonyInvoice {
  String get id => throw _privateConstructorUsedError;
  int get ceremonyHistoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyInvoiceCopyWith<CeremonyInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyInvoiceCopyWith<$Res> {
  factory $CeremonyInvoiceCopyWith(
          CeremonyInvoice value, $Res Function(CeremonyInvoice) then) =
      _$CeremonyInvoiceCopyWithImpl<$Res, CeremonyInvoice>;
  @useResult
  $Res call({String id, int ceremonyHistoryId});
}

/// @nodoc
class _$CeremonyInvoiceCopyWithImpl<$Res, $Val extends CeremonyInvoice>
    implements $CeremonyInvoiceCopyWith<$Res> {
  _$CeremonyInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyHistoryId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CeremonyInvoiceImplCopyWith<$Res>
    implements $CeremonyInvoiceCopyWith<$Res> {
  factory _$$CeremonyInvoiceImplCopyWith(_$CeremonyInvoiceImpl value,
          $Res Function(_$CeremonyInvoiceImpl) then) =
      __$$CeremonyInvoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int ceremonyHistoryId});
}

/// @nodoc
class __$$CeremonyInvoiceImplCopyWithImpl<$Res>
    extends _$CeremonyInvoiceCopyWithImpl<$Res, _$CeremonyInvoiceImpl>
    implements _$$CeremonyInvoiceImplCopyWith<$Res> {
  __$$CeremonyInvoiceImplCopyWithImpl(
      _$CeremonyInvoiceImpl _value, $Res Function(_$CeremonyInvoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyHistoryId = null,
  }) {
    return _then(_$CeremonyInvoiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyHistoryId: null == ceremonyHistoryId
          ? _value.ceremonyHistoryId
          : ceremonyHistoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyInvoiceImpl implements _CeremonyInvoice {
  const _$CeremonyInvoiceImpl(
      {required this.id, required this.ceremonyHistoryId});

  factory _$CeremonyInvoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyInvoiceImplFromJson(json);

  @override
  final String id;
  @override
  final int ceremonyHistoryId;

  @override
  String toString() {
    return 'CeremonyInvoice(id: $id, ceremonyHistoryId: $ceremonyHistoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyInvoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyHistoryId, ceremonyHistoryId) ||
                other.ceremonyHistoryId == ceremonyHistoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, ceremonyHistoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyInvoiceImplCopyWith<_$CeremonyInvoiceImpl> get copyWith =>
      __$$CeremonyInvoiceImplCopyWithImpl<_$CeremonyInvoiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyInvoiceImplToJson(
      this,
    );
  }
}

abstract class _CeremonyInvoice implements CeremonyInvoice {
  const factory _CeremonyInvoice(
      {required final String id,
      required final int ceremonyHistoryId}) = _$CeremonyInvoiceImpl;

  factory _CeremonyInvoice.fromJson(Map<String, dynamic> json) =
      _$CeremonyInvoiceImpl.fromJson;

  @override
  String get id;
  @override
  int get ceremonyHistoryId;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyInvoiceImplCopyWith<_$CeremonyInvoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
