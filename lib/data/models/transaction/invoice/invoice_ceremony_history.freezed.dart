// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_ceremony_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceCeremonyHistory _$InvoiceCeremonyHistoryFromJson(
    Map<String, dynamic> json) {
  return _InvoiceCeremonyHistory.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCeremonyHistory {
  int get id => throw _privateConstructorUsedError;
  int? get consultationId => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  int? get ceremonyServicePackageId => throw _privateConstructorUsedError;
  String get ceremonyAddress => throw _privateConstructorUsedError;
  String? get ceremonyAddressNote => throw _privateConstructorUsedError;
  DateTime get ceremonyDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  CeremonyService get ceremonyService => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCeremonyHistoryCopyWith<InvoiceCeremonyHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCeremonyHistoryCopyWith<$Res> {
  factory $InvoiceCeremonyHistoryCopyWith(InvoiceCeremonyHistory value,
          $Res Function(InvoiceCeremonyHistory) then) =
      _$InvoiceCeremonyHistoryCopyWithImpl<$Res, InvoiceCeremonyHistory>;
  @useResult
  $Res call(
      {int id,
      int? consultationId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String ceremonyAddress,
      String? ceremonyAddressNote,
      DateTime ceremonyDate,
      String title,
      String? packageName,
      String? note,
      String description,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyService ceremonyService});

  $CeremonyServiceCopyWith<$Res> get ceremonyService;
}

/// @nodoc
class _$InvoiceCeremonyHistoryCopyWithImpl<$Res,
        $Val extends InvoiceCeremonyHistory>
    implements $InvoiceCeremonyHistoryCopyWith<$Res> {
  _$InvoiceCeremonyHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = freezed,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? ceremonyAddress = null,
    Object? ceremonyAddressNote = freezed,
    Object? ceremonyDate = null,
    Object? title = null,
    Object? packageName = freezed,
    Object? note = freezed,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyService = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ceremonyService: null == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyServiceCopyWith<$Res> get ceremonyService {
    return $CeremonyServiceCopyWith<$Res>(_value.ceremonyService, (value) {
      return _then(_value.copyWith(ceremonyService: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceCeremonyHistoryImplCopyWith<$Res>
    implements $InvoiceCeremonyHistoryCopyWith<$Res> {
  factory _$$InvoiceCeremonyHistoryImplCopyWith(
          _$InvoiceCeremonyHistoryImpl value,
          $Res Function(_$InvoiceCeremonyHistoryImpl) then) =
      __$$InvoiceCeremonyHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? consultationId,
      int ceremonyServiceId,
      int? ceremonyServicePackageId,
      String ceremonyAddress,
      String? ceremonyAddressNote,
      DateTime ceremonyDate,
      String title,
      String? packageName,
      String? note,
      String description,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyService ceremonyService});

  @override
  $CeremonyServiceCopyWith<$Res> get ceremonyService;
}

/// @nodoc
class __$$InvoiceCeremonyHistoryImplCopyWithImpl<$Res>
    extends _$InvoiceCeremonyHistoryCopyWithImpl<$Res,
        _$InvoiceCeremonyHistoryImpl>
    implements _$$InvoiceCeremonyHistoryImplCopyWith<$Res> {
  __$$InvoiceCeremonyHistoryImplCopyWithImpl(
      _$InvoiceCeremonyHistoryImpl _value,
      $Res Function(_$InvoiceCeremonyHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? consultationId = freezed,
    Object? ceremonyServiceId = null,
    Object? ceremonyServicePackageId = freezed,
    Object? ceremonyAddress = null,
    Object? ceremonyAddressNote = freezed,
    Object? ceremonyDate = null,
    Object? title = null,
    Object? packageName = freezed,
    Object? note = freezed,
    Object? description = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyService = null,
  }) {
    return _then(_$InvoiceCeremonyHistoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ceremonyService: null == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCeremonyHistoryImpl implements _InvoiceCeremonyHistory {
  const _$InvoiceCeremonyHistoryImpl(
      {required this.id,
      this.consultationId,
      required this.ceremonyServiceId,
      this.ceremonyServicePackageId,
      required this.ceremonyAddress,
      this.ceremonyAddressNote,
      required this.ceremonyDate,
      required this.title,
      this.packageName,
      this.note,
      required this.description,
      required this.createdAt,
      required this.updatedAt,
      required this.ceremonyService});

  factory _$InvoiceCeremonyHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceCeremonyHistoryImplFromJson(json);

  @override
  final int id;
  @override
  final int? consultationId;
  @override
  final int ceremonyServiceId;
  @override
  final int? ceremonyServicePackageId;
  @override
  final String ceremonyAddress;
  @override
  final String? ceremonyAddressNote;
  @override
  final DateTime ceremonyDate;
  @override
  final String title;
  @override
  final String? packageName;
  @override
  final String? note;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final CeremonyService ceremonyService;

  @override
  String toString() {
    return 'InvoiceCeremonyHistory(id: $id, consultationId: $consultationId, ceremonyServiceId: $ceremonyServiceId, ceremonyServicePackageId: $ceremonyServicePackageId, ceremonyAddress: $ceremonyAddress, ceremonyAddressNote: $ceremonyAddressNote, ceremonyDate: $ceremonyDate, title: $title, packageName: $packageName, note: $note, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, ceremonyService: $ceremonyService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCeremonyHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(
                    other.ceremonyServicePackageId, ceremonyServicePackageId) ||
                other.ceremonyServicePackageId == ceremonyServicePackageId) &&
            (identical(other.ceremonyAddress, ceremonyAddress) ||
                other.ceremonyAddress == ceremonyAddress) &&
            (identical(other.ceremonyAddressNote, ceremonyAddressNote) ||
                other.ceremonyAddressNote == ceremonyAddressNote) &&
            (identical(other.ceremonyDate, ceremonyDate) ||
                other.ceremonyDate == ceremonyDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ceremonyService, ceremonyService) ||
                other.ceremonyService == ceremonyService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      consultationId,
      ceremonyServiceId,
      ceremonyServicePackageId,
      ceremonyAddress,
      ceremonyAddressNote,
      ceremonyDate,
      title,
      packageName,
      note,
      description,
      createdAt,
      updatedAt,
      ceremonyService);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCeremonyHistoryImplCopyWith<_$InvoiceCeremonyHistoryImpl>
      get copyWith => __$$InvoiceCeremonyHistoryImplCopyWithImpl<
          _$InvoiceCeremonyHistoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCeremonyHistoryImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCeremonyHistory implements InvoiceCeremonyHistory {
  const factory _InvoiceCeremonyHistory(
          {required final int id,
          final int? consultationId,
          required final int ceremonyServiceId,
          final int? ceremonyServicePackageId,
          required final String ceremonyAddress,
          final String? ceremonyAddressNote,
          required final DateTime ceremonyDate,
          required final String title,
          final String? packageName,
          final String? note,
          required final String description,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final CeremonyService ceremonyService}) =
      _$InvoiceCeremonyHistoryImpl;

  factory _InvoiceCeremonyHistory.fromJson(Map<String, dynamic> json) =
      _$InvoiceCeremonyHistoryImpl.fromJson;

  @override
  int get id;
  @override
  int? get consultationId;
  @override
  int get ceremonyServiceId;
  @override
  int? get ceremonyServicePackageId;
  @override
  String get ceremonyAddress;
  @override
  String? get ceremonyAddressNote;
  @override
  DateTime get ceremonyDate;
  @override
  String get title;
  @override
  String? get packageName;
  @override
  String? get note;
  @override
  String get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  CeremonyService get ceremonyService;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceCeremonyHistoryImplCopyWith<_$InvoiceCeremonyHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
