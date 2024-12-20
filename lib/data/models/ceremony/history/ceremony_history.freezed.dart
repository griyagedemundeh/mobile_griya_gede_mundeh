// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyHistory _$CeremonyHistoryFromJson(Map<String, dynamic> json) {
  return _CeremonyHistory.fromJson(json);
}

/// @nodoc
mixin _$CeremonyHistory {
  int get id => throw _privateConstructorUsedError;
  int get adminId => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  int get memberAddressId => throw _privateConstructorUsedError;
  int? get consultationId => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  int? get ceremonyServicePackageId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String get ceremonyAddress => throw _privateConstructorUsedError;
  String? get ceremonyAddressNote => throw _privateConstructorUsedError;
  DateTime get ceremonyDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  CeremonyPackage? get ceremonyPackage => throw _privateConstructorUsedError;
  CeremonyService get ceremonyService => throw _privateConstructorUsedError;
  CeremonyAdmin? get ceremonyAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyHistoryCopyWith<CeremonyHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyHistoryCopyWith<$Res> {
  factory $CeremonyHistoryCopyWith(
          CeremonyHistory value, $Res Function(CeremonyHistory) then) =
      _$CeremonyHistoryCopyWithImpl<$Res, CeremonyHistory>;
  @useResult
  $Res call(
      {int id,
      int adminId,
      int memberId,
      int memberAddressId,
      int? consultationId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String title,
      String? packageName,
      String description,
      String? note,
      String ceremonyAddress,
      String? ceremonyAddressNote,
      DateTime ceremonyDate,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyPackage? ceremonyPackage,
      CeremonyService ceremonyService,
      CeremonyAdmin? ceremonyAdmin});

  $CeremonyPackageCopyWith<$Res>? get ceremonyPackage;
  $CeremonyServiceCopyWith<$Res> get ceremonyService;
  $CeremonyAdminCopyWith<$Res>? get ceremonyAdmin;
}

/// @nodoc
class _$CeremonyHistoryCopyWithImpl<$Res, $Val extends CeremonyHistory>
    implements $CeremonyHistoryCopyWith<$Res> {
  _$CeremonyHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminId = null,
    Object? memberId = null,
    Object? memberAddressId = null,
    Object? consultationId = freezed,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? title = null,
    Object? packageName = freezed,
    Object? description = null,
    Object? note = freezed,
    Object? ceremonyAddress = null,
    Object? ceremonyAddressNote = freezed,
    Object? ceremonyDate = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyPackage = freezed,
    Object? ceremonyService = null,
    Object? ceremonyAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      memberAddressId: null == memberAddressId
          ? _value.memberAddressId
          : memberAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyAddress: null == ceremonyAddress
          ? _value.ceremonyAddress
          : ceremonyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyAddressNote: freezed == ceremonyAddressNote
          ? _value.ceremonyAddressNote
          : ceremonyAddressNote // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyDate: null == ceremonyDate
          ? _value.ceremonyDate
          : ceremonyDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      ceremonyPackage: freezed == ceremonyPackage
          ? _value.ceremonyPackage
          : ceremonyPackage // ignore: cast_nullable_to_non_nullable
              as CeremonyPackage?,
      ceremonyService: null == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService,
      ceremonyAdmin: freezed == ceremonyAdmin
          ? _value.ceremonyAdmin
          : ceremonyAdmin // ignore: cast_nullable_to_non_nullable
              as CeremonyAdmin?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyPackageCopyWith<$Res>? get ceremonyPackage {
    if (_value.ceremonyPackage == null) {
      return null;
    }

    return $CeremonyPackageCopyWith<$Res>(_value.ceremonyPackage!, (value) {
      return _then(_value.copyWith(ceremonyPackage: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyServiceCopyWith<$Res> get ceremonyService {
    return $CeremonyServiceCopyWith<$Res>(_value.ceremonyService, (value) {
      return _then(_value.copyWith(ceremonyService: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyAdminCopyWith<$Res>? get ceremonyAdmin {
    if (_value.ceremonyAdmin == null) {
      return null;
    }

    return $CeremonyAdminCopyWith<$Res>(_value.ceremonyAdmin!, (value) {
      return _then(_value.copyWith(ceremonyAdmin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CeremonyHistoryImplCopyWith<$Res>
    implements $CeremonyHistoryCopyWith<$Res> {
  factory _$$CeremonyHistoryImplCopyWith(_$CeremonyHistoryImpl value,
          $Res Function(_$CeremonyHistoryImpl) then) =
      __$$CeremonyHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int adminId,
      int memberId,
      int memberAddressId,
      int? consultationId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String title,
      String? packageName,
      String description,
      String? note,
      String ceremonyAddress,
      String? ceremonyAddressNote,
      DateTime ceremonyDate,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyPackage? ceremonyPackage,
      CeremonyService ceremonyService,
      CeremonyAdmin? ceremonyAdmin});

  @override
  $CeremonyPackageCopyWith<$Res>? get ceremonyPackage;
  @override
  $CeremonyServiceCopyWith<$Res> get ceremonyService;
  @override
  $CeremonyAdminCopyWith<$Res>? get ceremonyAdmin;
}

/// @nodoc
class __$$CeremonyHistoryImplCopyWithImpl<$Res>
    extends _$CeremonyHistoryCopyWithImpl<$Res, _$CeremonyHistoryImpl>
    implements _$$CeremonyHistoryImplCopyWith<$Res> {
  __$$CeremonyHistoryImplCopyWithImpl(
      _$CeremonyHistoryImpl _value, $Res Function(_$CeremonyHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminId = null,
    Object? memberId = null,
    Object? memberAddressId = null,
    Object? consultationId = freezed,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? title = null,
    Object? packageName = freezed,
    Object? description = null,
    Object? note = freezed,
    Object? ceremonyAddress = null,
    Object? ceremonyAddressNote = freezed,
    Object? ceremonyDate = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyPackage = freezed,
    Object? ceremonyService = null,
    Object? ceremonyAdmin = freezed,
  }) {
    return _then(_$CeremonyHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
      memberAddressId: null == memberAddressId
          ? _value.memberAddressId
          : memberAddressId // ignore: cast_nullable_to_non_nullable
              as int,
      consultationId: freezed == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as int?,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyServicePackageId: freezed == ceremonyServicePackageId
          ? _value.ceremonyServicePackageId
          : ceremonyServicePackageId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyAddress: null == ceremonyAddress
          ? _value.ceremonyAddress
          : ceremonyAddress // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyAddressNote: freezed == ceremonyAddressNote
          ? _value.ceremonyAddressNote
          : ceremonyAddressNote // ignore: cast_nullable_to_non_nullable
              as String?,
      ceremonyDate: null == ceremonyDate
          ? _value.ceremonyDate
          : ceremonyDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      ceremonyPackage: freezed == ceremonyPackage
          ? _value.ceremonyPackage
          : ceremonyPackage // ignore: cast_nullable_to_non_nullable
              as CeremonyPackage?,
      ceremonyService: null == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService,
      ceremonyAdmin: freezed == ceremonyAdmin
          ? _value.ceremonyAdmin
          : ceremonyAdmin // ignore: cast_nullable_to_non_nullable
              as CeremonyAdmin?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyHistoryImpl implements _CeremonyHistory {
  const _$CeremonyHistoryImpl(
      {required this.id,
      required this.adminId,
      required this.memberId,
      required this.memberAddressId,
      this.consultationId,
      required this.ceremonyServiceId,
      this.ceremonyServicePackageId,
      required this.title,
      this.packageName,
      required this.description,
      this.note,
      required this.ceremonyAddress,
      this.ceremonyAddressNote,
      required this.ceremonyDate,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.ceremonyPackage,
      required this.ceremonyService,
      this.ceremonyAdmin});

  factory _$CeremonyHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int adminId;
  @override
  final int memberId;
  @override
  final int memberAddressId;
  @override
  final int? consultationId;
  @override
  final int ceremonyServiceId;
  @override
  final int? ceremonyServicePackageId;
  @override
  final String title;
  @override
  final String? packageName;
  @override
  final String description;
  @override
  final String? note;
  @override
  final String ceremonyAddress;
  @override
  final String? ceremonyAddressNote;
  @override
  final DateTime ceremonyDate;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final CeremonyPackage? ceremonyPackage;
  @override
  final CeremonyService ceremonyService;
  @override
  final CeremonyAdmin? ceremonyAdmin;

  @override
  String toString() {
    return 'CeremonyHistory(id: $id, adminId: $adminId, memberId: $memberId, memberAddressId: $memberAddressId, consultationId: $consultationId, ceremonyServiceId: $ceremonyServiceId, ceremonyServicePackageId: $ceremonyServicePackageId, title: $title, packageName: $packageName, description: $description, note: $note, ceremonyAddress: $ceremonyAddress, ceremonyAddressNote: $ceremonyAddressNote, ceremonyDate: $ceremonyDate, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, ceremonyPackage: $ceremonyPackage, ceremonyService: $ceremonyService, ceremonyAdmin: $ceremonyAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.memberAddressId, memberAddressId) ||
                other.memberAddressId == memberAddressId) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(
                    other.ceremonyServicePackageId, ceremonyServicePackageId) ||
                other.ceremonyServicePackageId == ceremonyServicePackageId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.ceremonyAddress, ceremonyAddress) ||
                other.ceremonyAddress == ceremonyAddress) &&
            (identical(other.ceremonyAddressNote, ceremonyAddressNote) ||
                other.ceremonyAddressNote == ceremonyAddressNote) &&
            (identical(other.ceremonyDate, ceremonyDate) ||
                other.ceremonyDate == ceremonyDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ceremonyPackage, ceremonyPackage) ||
                other.ceremonyPackage == ceremonyPackage) &&
            (identical(other.ceremonyService, ceremonyService) ||
                other.ceremonyService == ceremonyService) &&
            (identical(other.ceremonyAdmin, ceremonyAdmin) ||
                other.ceremonyAdmin == ceremonyAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        adminId,
        memberId,
        memberAddressId,
        consultationId,
        ceremonyServiceId,
        ceremonyServicePackageId,
        title,
        packageName,
        description,
        note,
        ceremonyAddress,
        ceremonyAddressNote,
        ceremonyDate,
        status,
        createdAt,
        updatedAt,
        ceremonyPackage,
        ceremonyService,
        ceremonyAdmin
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyHistoryImplCopyWith<_$CeremonyHistoryImpl> get copyWith =>
      __$$CeremonyHistoryImplCopyWithImpl<_$CeremonyHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyHistoryImplToJson(
      this,
    );
  }
}

abstract class _CeremonyHistory implements CeremonyHistory {
  const factory _CeremonyHistory(
      {required final int id,
      required final int adminId,
      required final int memberId,
      required final int memberAddressId,
      final int? consultationId,
      required final int ceremonyServiceId,
      final int? ceremonyServicePackageId,
      required final String title,
      final String? packageName,
      required final String description,
      final String? note,
      required final String ceremonyAddress,
      final String? ceremonyAddressNote,
      required final DateTime ceremonyDate,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final CeremonyPackage? ceremonyPackage,
      required final CeremonyService ceremonyService,
      final CeremonyAdmin? ceremonyAdmin}) = _$CeremonyHistoryImpl;

  factory _CeremonyHistory.fromJson(Map<String, dynamic> json) =
      _$CeremonyHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int get adminId;
  @override
  int get memberId;
  @override
  int get memberAddressId;
  @override
  int? get consultationId;
  @override
  int get ceremonyServiceId;
  @override
  int? get ceremonyServicePackageId;
  @override
  String get title;
  @override
  String? get packageName;
  @override
  String get description;
  @override
  String? get note;
  @override
  String get ceremonyAddress;
  @override
  String? get ceremonyAddressNote;
  @override
  DateTime get ceremonyDate;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  CeremonyPackage? get ceremonyPackage;
  @override
  CeremonyService get ceremonyService;
  @override
  CeremonyAdmin? get ceremonyAdmin;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyHistoryImplCopyWith<_$CeremonyHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
