// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_consultation_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyConsultationHistory _$CeremonyConsultationHistoryFromJson(
    Map<String, dynamic> json) {
  return _CeremonyConsultationHistory.fromJson(json);
}

/// @nodoc
mixin _$CeremonyConsultationHistory {
  int get id => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  int? get ceremonyServicePackageId => throw _privateConstructorUsedError;
  String get ceremonyServiceName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  LastMessage? get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyConsultationHistoryCopyWith<CeremonyConsultationHistory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyConsultationHistoryCopyWith<$Res> {
  factory $CeremonyConsultationHistoryCopyWith(
          CeremonyConsultationHistory value,
          $Res Function(CeremonyConsultationHistory) then) =
      _$CeremonyConsultationHistoryCopyWithImpl<$Res,
          CeremonyConsultationHistory>;
  @useResult
  $Res call(
      {int id,
      int memberId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String ceremonyServiceName,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      LastMessage? lastMessage});

  $LastMessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$CeremonyConsultationHistoryCopyWithImpl<$Res,
        $Val extends CeremonyConsultationHistory>
    implements $CeremonyConsultationHistoryCopyWith<$Res> {
  _$CeremonyConsultationHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? ceremonyServiceName = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyServiceName: null == ceremonyServiceName
          ? _value.ceremonyServiceName
          : ceremonyServiceName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LastMessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $LastMessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CeremonyConsultationHistoryImplCopyWith<$Res>
    implements $CeremonyConsultationHistoryCopyWith<$Res> {
  factory _$$CeremonyConsultationHistoryImplCopyWith(
          _$CeremonyConsultationHistoryImpl value,
          $Res Function(_$CeremonyConsultationHistoryImpl) then) =
      __$$CeremonyConsultationHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int memberId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String ceremonyServiceName,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      LastMessage? lastMessage});

  @override
  $LastMessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$CeremonyConsultationHistoryImplCopyWithImpl<$Res>
    extends _$CeremonyConsultationHistoryCopyWithImpl<$Res,
        _$CeremonyConsultationHistoryImpl>
    implements _$$CeremonyConsultationHistoryImplCopyWith<$Res> {
  __$$CeremonyConsultationHistoryImplCopyWithImpl(
      _$CeremonyConsultationHistoryImpl _value,
      $Res Function(_$CeremonyConsultationHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? ceremonyServiceName = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_$CeremonyConsultationHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyServiceName: null == ceremonyServiceName
          ? _value.ceremonyServiceName
          : ceremonyServiceName // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as LastMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyConsultationHistoryImpl
    implements _CeremonyConsultationHistory {
  const _$CeremonyConsultationHistoryImpl(
      {required this.id,
      required this.memberId,
      required this.ceremonyServiceId,
      this.ceremonyServicePackageId,
      required this.ceremonyServiceName,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.lastMessage});

  factory _$CeremonyConsultationHistoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CeremonyConsultationHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int memberId;
  @override
  final int ceremonyServiceId;
  @override
  final int? ceremonyServicePackageId;
  @override
  final String ceremonyServiceName;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final LastMessage? lastMessage;

  @override
  String toString() {
    return 'CeremonyConsultationHistory(id: $id, memberId: $memberId, ceremonyServiceId: $ceremonyServiceId, ceremonyServicePackageId: $ceremonyServicePackageId, ceremonyServiceName: $ceremonyServiceName, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyConsultationHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(
                    other.ceremonyServicePackageId, ceremonyServicePackageId) ||
                other.ceremonyServicePackageId == ceremonyServicePackageId) &&
            (identical(other.ceremonyServiceName, ceremonyServiceName) ||
                other.ceremonyServiceName == ceremonyServiceName) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      memberId,
      ceremonyServiceId,
      ceremonyServicePackageId,
      ceremonyServiceName,
      status,
      createdAt,
      updatedAt,
      lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyConsultationHistoryImplCopyWith<_$CeremonyConsultationHistoryImpl>
      get copyWith => __$$CeremonyConsultationHistoryImplCopyWithImpl<
          _$CeremonyConsultationHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyConsultationHistoryImplToJson(
      this,
    );
  }
}

abstract class _CeremonyConsultationHistory
    implements CeremonyConsultationHistory {
  const factory _CeremonyConsultationHistory(
      {required final int id,
      required final int memberId,
      required final int ceremonyServiceId,
      final int? ceremonyServicePackageId,
      required final String ceremonyServiceName,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final LastMessage? lastMessage}) = _$CeremonyConsultationHistoryImpl;

  factory _CeremonyConsultationHistory.fromJson(Map<String, dynamic> json) =
      _$CeremonyConsultationHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int get memberId;
  @override
  int get ceremonyServiceId;
  @override
  int? get ceremonyServicePackageId;
  @override
  String get ceremonyServiceName;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  LastMessage? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyConsultationHistoryImplCopyWith<_$CeremonyConsultationHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
