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
  String get title => throw _privateConstructorUsedError;
  int get ceremonyServiceId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  CeremonyService? get ceremonyService => throw _privateConstructorUsedError;

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
      {String title,
      int ceremonyServiceId,
      int id,
      CeremonyService? ceremonyService});

  $CeremonyServiceCopyWith<$Res>? get ceremonyService;
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
    Object? title = null,
    Object? ceremonyServiceId = null,
    Object? id = null,
    Object? ceremonyService = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyService: freezed == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyServiceCopyWith<$Res>? get ceremonyService {
    if (_value.ceremonyService == null) {
      return null;
    }

    return $CeremonyServiceCopyWith<$Res>(_value.ceremonyService!, (value) {
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
      {String title,
      int ceremonyServiceId,
      int id,
      CeremonyService? ceremonyService});

  @override
  $CeremonyServiceCopyWith<$Res>? get ceremonyService;
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
    Object? title = null,
    Object? ceremonyServiceId = null,
    Object? id = null,
    Object? ceremonyService = freezed,
  }) {
    return _then(_$InvoiceCeremonyHistoryImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ceremonyServiceId: null == ceremonyServiceId
          ? _value.ceremonyServiceId
          : ceremonyServiceId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyService: freezed == ceremonyService
          ? _value.ceremonyService
          : ceremonyService // ignore: cast_nullable_to_non_nullable
              as CeremonyService?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCeremonyHistoryImpl implements _InvoiceCeremonyHistory {
  const _$InvoiceCeremonyHistoryImpl(
      {required this.title,
      required this.ceremonyServiceId,
      required this.id,
      this.ceremonyService});

  factory _$InvoiceCeremonyHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceCeremonyHistoryImplFromJson(json);

  @override
  final String title;
  @override
  final int ceremonyServiceId;
  @override
  final int id;
  @override
  final CeremonyService? ceremonyService;

  @override
  String toString() {
    return 'InvoiceCeremonyHistory(title: $title, ceremonyServiceId: $ceremonyServiceId, id: $id, ceremonyService: $ceremonyService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCeremonyHistoryImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ceremonyServiceId, ceremonyServiceId) ||
                other.ceremonyServiceId == ceremonyServiceId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyService, ceremonyService) ||
                other.ceremonyService == ceremonyService));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, ceremonyServiceId, id, ceremonyService);

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
      {required final String title,
      required final int ceremonyServiceId,
      required final int id,
      final CeremonyService? ceremonyService}) = _$InvoiceCeremonyHistoryImpl;

  factory _InvoiceCeremonyHistory.fromJson(Map<String, dynamic> json) =
      _$InvoiceCeremonyHistoryImpl.fromJson;

  @override
  String get title;
  @override
  int get ceremonyServiceId;
  @override
  int get id;
  @override
  CeremonyService? get ceremonyService;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceCeremonyHistoryImplCopyWith<_$InvoiceCeremonyHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
