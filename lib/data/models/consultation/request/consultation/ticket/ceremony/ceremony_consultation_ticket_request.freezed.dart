// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_consultation_ticket_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyConsultationTicketRequest _$CeremonyConsultationTicketRequestFromJson(
    Map<String, dynamic> json) {
  return _CeremonyConsultationTicketRequest.fromJson(json);
}

/// @nodoc
mixin _$CeremonyConsultationTicketRequest {
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  String get ceremonyServiceName => throw _privateConstructorUsedError;
  int? get ceremonyServicePackageId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyConsultationTicketRequestCopyWith<CeremonyConsultationTicketRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyConsultationTicketRequestCopyWith<$Res> {
  factory $CeremonyConsultationTicketRequestCopyWith(
          CeremonyConsultationTicketRequest value,
          $Res Function(CeremonyConsultationTicketRequest) then) =
      _$CeremonyConsultationTicketRequestCopyWithImpl<$Res,
          CeremonyConsultationTicketRequest>;
  @useResult
  $Res call(
      {int ceremonyServiceId,
      String ceremonyServiceName,
      int? ceremonyServicePackageId,
      int memberId});
}

/// @nodoc
class _$CeremonyConsultationTicketRequestCopyWithImpl<$Res,
        $Val extends CeremonyConsultationTicketRequest>
    implements $CeremonyConsultationTicketRequestCopyWith<$Res> {
  _$CeremonyConsultationTicketRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceremonyServiceId = null,
    Object? ceremonyServiceName = null,
    Object? ceremonyServicePackageId = freezed,
    Object? memberId = null,
  }) {
    return _then(_value.copyWith(
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceName: null == ceremonyServiceName
          ? _value.ceremonyServiceName
          : ceremonyServiceName // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CeremonyConsultationTicketRequestImplCopyWith<$Res>
    implements $CeremonyConsultationTicketRequestCopyWith<$Res> {
  factory _$$CeremonyConsultationTicketRequestImplCopyWith(
          _$CeremonyConsultationTicketRequestImpl value,
          $Res Function(_$CeremonyConsultationTicketRequestImpl) then) =
      __$$CeremonyConsultationTicketRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ceremonyServiceId,
      String ceremonyServiceName,
      int? ceremonyServicePackageId,
      int memberId});
}

/// @nodoc
class __$$CeremonyConsultationTicketRequestImplCopyWithImpl<$Res>
    extends _$CeremonyConsultationTicketRequestCopyWithImpl<$Res,
        _$CeremonyConsultationTicketRequestImpl>
    implements _$$CeremonyConsultationTicketRequestImplCopyWith<$Res> {
  __$$CeremonyConsultationTicketRequestImplCopyWithImpl(
      _$CeremonyConsultationTicketRequestImpl _value,
      $Res Function(_$CeremonyConsultationTicketRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceremonyServiceId = null,
    Object? ceremonyServiceName = null,
    Object? ceremonyServicePackageId = freezed,
    Object? memberId = null,
  }) {
    return _then(_$CeremonyConsultationTicketRequestImpl(
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceName: null == ceremonyServiceName
          ? _value.ceremonyServiceName
          : ceremonyServiceName // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyConsultationTicketRequestImpl
    implements _CeremonyConsultationTicketRequest {
  const _$CeremonyConsultationTicketRequestImpl(
      {required this.ceremonyServiceId,
      required this.ceremonyServiceName,
      this.ceremonyServicePackageId,
      required this.memberId});

  factory _$CeremonyConsultationTicketRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CeremonyConsultationTicketRequestImplFromJson(json);

  @override
  final int ceremonyServiceId;
  @override
  final String ceremonyServiceName;
  @override
  final int? ceremonyServicePackageId;
  @override
  final int memberId;

  @override
  String toString() {
    return 'CeremonyConsultationTicketRequest(ceremonyServiceId: $ceremonyServiceId, ceremonyServiceName: $ceremonyServiceName, ceremonyServicePackageId: $ceremonyServicePackageId, memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyConsultationTicketRequestImpl &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(other.ceremonyServiceName, ceremonyServiceName) ||
                other.ceremonyServiceName == ceremonyServiceName) &&
            (identical(
                    other.ceremonyServicePackageId, ceremonyServicePackageId) ||
                other.ceremonyServicePackageId == ceremonyServicePackageId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ceremonyServiceId,
      ceremonyServiceName, ceremonyServicePackageId, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyConsultationTicketRequestImplCopyWith<
          _$CeremonyConsultationTicketRequestImpl>
      get copyWith => __$$CeremonyConsultationTicketRequestImplCopyWithImpl<
          _$CeremonyConsultationTicketRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyConsultationTicketRequestImplToJson(
      this,
    );
  }
}

abstract class _CeremonyConsultationTicketRequest
    implements CeremonyConsultationTicketRequest {
  const factory _CeremonyConsultationTicketRequest(
      {required final int ceremonyServiceId,
      required final String ceremonyServiceName,
      final int? ceremonyServicePackageId,
      required final int memberId}) = _$CeremonyConsultationTicketRequestImpl;

  factory _CeremonyConsultationTicketRequest.fromJson(
          Map<String, dynamic> json) =
      _$CeremonyConsultationTicketRequestImpl.fromJson;

  @override
  int get ceremonyServiceId;
  @override
  String get ceremonyServiceName;
  @override
  int? get ceremonyServicePackageId;
  @override
  int get memberId;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyConsultationTicketRequestImplCopyWith<
          _$CeremonyConsultationTicketRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
