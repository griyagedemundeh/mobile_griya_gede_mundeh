// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_author.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleAuthor _$ArticleAuthorFromJson(Map<String, dynamic> json) {
  return _ArticleAuthor.fromJson(json);
}

/// @nodoc
mixin _$ArticleAuthor {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleAuthorCopyWith<ArticleAuthor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleAuthorCopyWith<$Res> {
  factory $ArticleAuthorCopyWith(
          ArticleAuthor value, $Res Function(ArticleAuthor) then) =
      _$ArticleAuthorCopyWithImpl<$Res, ArticleAuthor>;
  @useResult
  $Res call(
      {int id, int userId, String role, DateTime createdAt, DateTime updateAt});
}

/// @nodoc
class _$ArticleAuthorCopyWithImpl<$Res, $Val extends ArticleAuthor>
    implements $ArticleAuthorCopyWith<$Res> {
  _$ArticleAuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? role = null,
    Object? createdAt = null,
    Object? updateAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleAuthorImplCopyWith<$Res>
    implements $ArticleAuthorCopyWith<$Res> {
  factory _$$ArticleAuthorImplCopyWith(
          _$ArticleAuthorImpl value, $Res Function(_$ArticleAuthorImpl) then) =
      __$$ArticleAuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, int userId, String role, DateTime createdAt, DateTime updateAt});
}

/// @nodoc
class __$$ArticleAuthorImplCopyWithImpl<$Res>
    extends _$ArticleAuthorCopyWithImpl<$Res, _$ArticleAuthorImpl>
    implements _$$ArticleAuthorImplCopyWith<$Res> {
  __$$ArticleAuthorImplCopyWithImpl(
      _$ArticleAuthorImpl _value, $Res Function(_$ArticleAuthorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? role = null,
    Object? createdAt = null,
    Object? updateAt = null,
  }) {
    return _then(_$ArticleAuthorImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateAt: null == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleAuthorImpl implements _ArticleAuthor {
  _$ArticleAuthorImpl(
      {required this.id,
      required this.userId,
      required this.role,
      required this.createdAt,
      required this.updateAt});

  factory _$ArticleAuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleAuthorImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String role;
  @override
  final DateTime createdAt;
  @override
  final DateTime updateAt;

  @override
  String toString() {
    return 'ArticleAuthor(id: $id, userId: $userId, role: $role, createdAt: $createdAt, updateAt: $updateAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleAuthorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updateAt, updateAt) ||
                other.updateAt == updateAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, role, createdAt, updateAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleAuthorImplCopyWith<_$ArticleAuthorImpl> get copyWith =>
      __$$ArticleAuthorImplCopyWithImpl<_$ArticleAuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleAuthorImplToJson(
      this,
    );
  }
}

abstract class _ArticleAuthor implements ArticleAuthor {
  factory _ArticleAuthor(
      {required final int id,
      required final int userId,
      required final String role,
      required final DateTime createdAt,
      required final DateTime updateAt}) = _$ArticleAuthorImpl;

  factory _ArticleAuthor.fromJson(Map<String, dynamic> json) =
      _$ArticleAuthorImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get role;
  @override
  DateTime get createdAt;
  @override
  DateTime get updateAt;
  @override
  @JsonKey(ignore: true)
  _$$ArticleAuthorImplCopyWith<_$ArticleAuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
