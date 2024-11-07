// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'author_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthorUser _$AuthorUserFromJson(Map<String, dynamic> json) {
  return _AuthorUser.fromJson(json);
}

/// @nodoc
mixin _$AuthorUser {
  int get id => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorUserCopyWith<AuthorUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorUserCopyWith<$Res> {
  factory $AuthorUserCopyWith(
          AuthorUser value, $Res Function(AuthorUser) then) =
      _$AuthorUserCopyWithImpl<$Res, AuthorUser>;
  @useResult
  $Res call(
      {int id,
      String? avatarUrl,
      String fullName,
      String email,
      String phoneNumber,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AuthorUserCopyWithImpl<$Res, $Val extends AuthorUser>
    implements $AuthorUserCopyWith<$Res> {
  _$AuthorUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorUserImplCopyWith<$Res>
    implements $AuthorUserCopyWith<$Res> {
  factory _$$AuthorUserImplCopyWith(
          _$AuthorUserImpl value, $Res Function(_$AuthorUserImpl) then) =
      __$$AuthorUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? avatarUrl,
      String fullName,
      String email,
      String phoneNumber,
      bool isActive,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$AuthorUserImplCopyWithImpl<$Res>
    extends _$AuthorUserCopyWithImpl<$Res, _$AuthorUserImpl>
    implements _$$AuthorUserImplCopyWith<$Res> {
  __$$AuthorUserImplCopyWithImpl(
      _$AuthorUserImpl _value, $Res Function(_$AuthorUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AuthorUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorUserImpl implements _AuthorUser {
  const _$AuthorUserImpl(
      {required this.id,
      this.avatarUrl,
      required this.fullName,
      required this.email,
      required this.phoneNumber,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt});

  factory _$AuthorUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorUserImplFromJson(json);

  @override
  final int id;
  @override
  final String? avatarUrl;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final bool isActive;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AuthorUser(id: $id, avatarUrl: $avatarUrl, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, avatarUrl, fullName, email,
      phoneNumber, isActive, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorUserImplCopyWith<_$AuthorUserImpl> get copyWith =>
      __$$AuthorUserImplCopyWithImpl<_$AuthorUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorUserImplToJson(
      this,
    );
  }
}

abstract class _AuthorUser implements AuthorUser {
  const factory _AuthorUser(
      {required final int id,
      final String? avatarUrl,
      required final String fullName,
      required final String email,
      required final String phoneNumber,
      required final bool isActive,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AuthorUserImpl;

  factory _AuthorUser.fromJson(Map<String, dynamic> json) =
      _$AuthorUserImpl.fromJson;

  @override
  int get id;
  @override
  String? get avatarUrl;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phoneNumber;
  @override
  bool get isActive;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AuthorUserImplCopyWith<_$AuthorUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
