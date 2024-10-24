// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ceremony.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ceremony _$CeremonyFromJson(Map<String, dynamic> json) {
  return _Ceremony.fromJson(json);
}

/// @nodoc
mixin _$Ceremony {
  int get id => throw _privateConstructorUsedError;
  int get ceremonyCategoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  CeremonyCategory? get ceremonyCategory => throw _privateConstructorUsedError;
  List<CeremonyDocumentation?>? get ceremonyDocumentation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CeremonyCopyWith<Ceremony> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CeremonyCopyWith<$Res> {
  factory $CeremonyCopyWith(Ceremony value, $Res Function(Ceremony) then) =
      _$CeremonyCopyWithImpl<$Res, Ceremony>;
  @useResult
  $Res call(
      {int id,
      int ceremonyCategoryId,
      String title,
      String description,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyCategory? ceremonyCategory,
      List<CeremonyDocumentation?>? ceremonyDocumentation});

  $CeremonyCategoryCopyWith<$Res>? get ceremonyCategory;
}

/// @nodoc
class _$CeremonyCopyWithImpl<$Res, $Val extends Ceremony>
    implements $CeremonyCopyWith<$Res> {
  _$CeremonyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyCategoryId = null,
    Object? title = null,
    Object? description = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyCategory = freezed,
    Object? ceremonyDocumentation = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyCategoryId: null == ceremonyCategoryId
          ? _value.ceremonyCategoryId
          : ceremonyCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ceremonyCategory: freezed == ceremonyCategory
          ? _value.ceremonyCategory
          : ceremonyCategory // ignore: cast_nullable_to_non_nullable
              as CeremonyCategory?,
      ceremonyDocumentation: freezed == ceremonyDocumentation
          ? _value.ceremonyDocumentation
          : ceremonyDocumentation // ignore: cast_nullable_to_non_nullable
              as List<CeremonyDocumentation?>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CeremonyCategoryCopyWith<$Res>? get ceremonyCategory {
    if (_value.ceremonyCategory == null) {
      return null;
    }

    return $CeremonyCategoryCopyWith<$Res>(_value.ceremonyCategory!, (value) {
      return _then(_value.copyWith(ceremonyCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CeremonyImplCopyWith<$Res>
    implements $CeremonyCopyWith<$Res> {
  factory _$$CeremonyImplCopyWith(
          _$CeremonyImpl value, $Res Function(_$CeremonyImpl) then) =
      __$$CeremonyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int ceremonyCategoryId,
      String title,
      String description,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt,
      CeremonyCategory? ceremonyCategory,
      List<CeremonyDocumentation?>? ceremonyDocumentation});

  @override
  $CeremonyCategoryCopyWith<$Res>? get ceremonyCategory;
}

/// @nodoc
class __$$CeremonyImplCopyWithImpl<$Res>
    extends _$CeremonyCopyWithImpl<$Res, _$CeremonyImpl>
    implements _$$CeremonyImplCopyWith<$Res> {
  __$$CeremonyImplCopyWithImpl(
      _$CeremonyImpl _value, $Res Function(_$CeremonyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ceremonyCategoryId = null,
    Object? title = null,
    Object? description = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? ceremonyCategory = freezed,
    Object? ceremonyDocumentation = freezed,
  }) {
    return _then(_$CeremonyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyCategoryId: null == ceremonyCategoryId
          ? _value.ceremonyCategoryId
          : ceremonyCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      ceremonyCategory: freezed == ceremonyCategory
          ? _value.ceremonyCategory
          : ceremonyCategory // ignore: cast_nullable_to_non_nullable
              as CeremonyCategory?,
      ceremonyDocumentation: freezed == ceremonyDocumentation
          ? _value._ceremonyDocumentation
          : ceremonyDocumentation // ignore: cast_nullable_to_non_nullable
              as List<CeremonyDocumentation?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyImpl implements _Ceremony {
  _$CeremonyImpl(
      {required this.id,
      required this.ceremonyCategoryId,
      required this.title,
      required this.description,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt,
      required this.ceremonyCategory,
      required final List<CeremonyDocumentation?>? ceremonyDocumentation})
      : _ceremonyDocumentation = ceremonyDocumentation;

  factory _$CeremonyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyImplFromJson(json);

  @override
  final int id;
  @override
  final int ceremonyCategoryId;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final CeremonyCategory? ceremonyCategory;
  final List<CeremonyDocumentation?>? _ceremonyDocumentation;
  @override
  List<CeremonyDocumentation?>? get ceremonyDocumentation {
    final value = _ceremonyDocumentation;
    if (value == null) return null;
    if (_ceremonyDocumentation is EqualUnmodifiableListView)
      return _ceremonyDocumentation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Ceremony(id: $id, ceremonyCategoryId: $ceremonyCategoryId, title: $title, description: $description, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, ceremonyCategory: $ceremonyCategory, ceremonyDocumentation: $ceremonyDocumentation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ceremonyCategoryId, ceremonyCategoryId) ||
                other.ceremonyCategoryId == ceremonyCategoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ceremonyCategory, ceremonyCategory) ||
                other.ceremonyCategory == ceremonyCategory) &&
            const DeepCollectionEquality()
                .equals(other._ceremonyDocumentation, _ceremonyDocumentation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ceremonyCategoryId,
      title,
      description,
      isActive,
      createdAt,
      updatedAt,
      ceremonyCategory,
      const DeepCollectionEquality().hash(_ceremonyDocumentation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CeremonyImplCopyWith<_$CeremonyImpl> get copyWith =>
      __$$CeremonyImplCopyWithImpl<_$CeremonyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CeremonyImplToJson(
      this,
    );
  }
}

abstract class _Ceremony implements Ceremony {
  factory _Ceremony(
          {required final int id,
          required final int ceremonyCategoryId,
          required final String title,
          required final String description,
          required final bool isActive,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final CeremonyCategory? ceremonyCategory,
          required final List<CeremonyDocumentation?>? ceremonyDocumentation}) =
      _$CeremonyImpl;

  factory _Ceremony.fromJson(Map<String, dynamic> json) =
      _$CeremonyImpl.fromJson;

  @override
  int get id;
  @override
  int get ceremonyCategoryId;
  @override
  String get title;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  CeremonyCategory? get ceremonyCategory;
  @override
  List<CeremonyDocumentation?>? get ceremonyDocumentation;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyImplCopyWith<_$CeremonyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
