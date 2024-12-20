// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CeremonyService _$CeremonyServiceFromJson(Map<String, dynamic> json) {
  return _CeremonyService.fromJson(json);
}

/// @nodoc
mixin _$CeremonyService {
  int get ceremonyCategoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  CeremonyCategory get ceremonyCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyServiceCopyWith<CeremonyService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyServiceCopyWith<$Res> {
  factory $CeremonyServiceCopyWith(
          CeremonyService value, $Res Function(CeremonyService) then) =
      _$CeremonyServiceCopyWithImpl<$Res, CeremonyService>;
  @useResult
  $Res call(
      {int ceremonyCategoryId,
      String title,
      int id,
      CeremonyCategory ceremonyCategory});

  $CeremonyCategoryCopyWith<$Res> get ceremonyCategory;
}

/// @nodoc
class _$CeremonyServiceCopyWithImpl<$Res, $Val extends CeremonyService>
    implements $CeremonyServiceCopyWith<$Res> {
  _$CeremonyServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceremonyCategoryId = null,
    Object? title = null,
    Object? id = null,
    Object? ceremonyCategory = null,
  }) {
    return _then(_value.copyWith(
      ceremonyCategoryId: null == ceremonyCategoryId
          ? _value.ceremonyCategoryId
          : ceremonyCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyCategory: null == ceremonyCategory
          ? _value.ceremonyCategory
          : ceremonyCategory // ignore: cast_nullable_to_non_nullable
              as CeremonyCategory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyCategoryCopyWith<$Res> get ceremonyCategory {
    return $CeremonyCategoryCopyWith<$Res>(_value.ceremonyCategory, (value) {
      return _then(_value.copyWith(ceremonyCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CeremonyServiceImplCopyWith<$Res>
    implements $CeremonyServiceCopyWith<$Res> {
  factory _$$CeremonyServiceImplCopyWith(_$CeremonyServiceImpl value,
          $Res Function(_$CeremonyServiceImpl) then) =
      __$$CeremonyServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int ceremonyCategoryId,
      String title,
      int id,
      CeremonyCategory ceremonyCategory});

  @override
  $CeremonyCategoryCopyWith<$Res> get ceremonyCategory;
}

/// @nodoc
class __$$CeremonyServiceImplCopyWithImpl<$Res>
    extends _$CeremonyServiceCopyWithImpl<$Res, _$CeremonyServiceImpl>
    implements _$$CeremonyServiceImplCopyWith<$Res> {
  __$$CeremonyServiceImplCopyWithImpl(
      _$CeremonyServiceImpl _value, $Res Function(_$CeremonyServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ceremonyCategoryId = null,
    Object? title = null,
    Object? id = null,
    Object? ceremonyCategory = null,
  }) {
    return _then(_$CeremonyServiceImpl(
      ceremonyCategoryId: null == ceremonyCategoryId
          ? _value.ceremonyCategoryId
          : ceremonyCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyCategory: null == ceremonyCategory
          ? _value.ceremonyCategory
          : ceremonyCategory // ignore: cast_nullable_to_non_nullable
              as CeremonyCategory,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyServiceImpl implements _CeremonyService {
  const _$CeremonyServiceImpl(
      {required this.ceremonyCategoryId,
      required this.title,
      required this.id,
      required this.ceremonyCategory});

  factory _$CeremonyServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyServiceImplFromJson(json);

  @override
  final int ceremonyCategoryId;
  @override
  final String title;
  @override
  final int id;
  @override
  final CeremonyCategory ceremonyCategory;

  @override
  String toString() {
    return 'CeremonyService(ceremonyCategoryId: $ceremonyCategoryId, title: $title, id: $id, ceremonyCategory: $ceremonyCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyServiceImpl &&
            (identical(other.ceremonyCategoryId, ceremonyCategoryId) ||
                other.ceremonyCategoryId == ceremonyCategoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyCategory, ceremonyCategory) ||
                other.ceremonyCategory == ceremonyCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ceremonyCategoryId, title, id, ceremonyCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyServiceImplCopyWith<_$CeremonyServiceImpl> get copyWith =>
      __$$CeremonyServiceImplCopyWithImpl<_$CeremonyServiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyServiceImplToJson(
      this,
    );
  }
}

abstract class _CeremonyService implements CeremonyService {
  const factory _CeremonyService(
          {required final int ceremonyCategoryId,
          required final String title,
          required final int id,
          required final CeremonyCategory ceremonyCategory}) =
      _$CeremonyServiceImpl;

  factory _CeremonyService.fromJson(Map<String, dynamic> json) =
      _$CeremonyServiceImpl.fromJson;

  @override
  int get ceremonyCategoryId;
  @override
  String get title;
  @override
  int get id;
  @override
  CeremonyCategory get ceremonyCategory;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyServiceImplCopyWith<_$CeremonyServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
