// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_consultation_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneralConsultationTicket _$GeneralConsultationTicketFromJson(
    Map<String, dynamic> json) {
  return _GeneralConsultationTicket.fromJson(json);
}

/// @nodoc
mixin _$GeneralConsultationTicket {
  int get id => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralConsultationTicketCopyWith<GeneralConsultationTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralConsultationTicketCopyWith<$Res> {
  factory $GeneralConsultationTicketCopyWith(GeneralConsultationTicket value,
          $Res Function(GeneralConsultationTicket) then) =
      _$GeneralConsultationTicketCopyWithImpl<$Res, GeneralConsultationTicket>;
  @useResult
  $Res call(
      {int id,
      int memberId,
      String status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$GeneralConsultationTicketCopyWithImpl<$Res,
        $Val extends GeneralConsultationTicket>
    implements $GeneralConsultationTicketCopyWith<$Res> {
  _$GeneralConsultationTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneralConsultationTicketImplCopyWith<$Res>
    implements $GeneralConsultationTicketCopyWith<$Res> {
  factory _$$GeneralConsultationTicketImplCopyWith(
          _$GeneralConsultationTicketImpl value,
          $Res Function(_$GeneralConsultationTicketImpl) then) =
      __$$GeneralConsultationTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int memberId,
      String status,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$GeneralConsultationTicketImplCopyWithImpl<$Res>
    extends _$GeneralConsultationTicketCopyWithImpl<$Res,
        _$GeneralConsultationTicketImpl>
    implements _$$GeneralConsultationTicketImplCopyWith<$Res> {
  __$$GeneralConsultationTicketImplCopyWithImpl(
      _$GeneralConsultationTicketImpl _value,
      $Res Function(_$GeneralConsultationTicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$GeneralConsultationTicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneralConsultationTicketImpl implements _GeneralConsultationTicket {
  const _$GeneralConsultationTicketImpl(
      {required this.id,
      required this.memberId,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory _$GeneralConsultationTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneralConsultationTicketImplFromJson(json);

  @override
  final int id;
  @override
  final int memberId;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'GeneralConsultationTicket(id: $id, memberId: $memberId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneralConsultationTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, memberId, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneralConsultationTicketImplCopyWith<_$GeneralConsultationTicketImpl>
      get copyWith => __$$GeneralConsultationTicketImplCopyWithImpl<
          _$GeneralConsultationTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneralConsultationTicketImplToJson(
      this,
    );
  }
}

abstract class _GeneralConsultationTicket implements GeneralConsultationTicket {
  const factory _GeneralConsultationTicket(
      {required final int id,
      required final int memberId,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$GeneralConsultationTicketImpl;

  factory _GeneralConsultationTicket.fromJson(Map<String, dynamic> json) =
      _$GeneralConsultationTicketImpl.fromJson;

  @override
  int get id;
  @override
  int get memberId;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$GeneralConsultationTicketImplCopyWith<_$GeneralConsultationTicketImpl>
      get copyWith => throw _privateConstructorUsedError;
}
