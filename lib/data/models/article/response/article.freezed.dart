// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  int get id => throw _privateConstructorUsedError;
  int get adminId => throw _privateConstructorUsedError;
  int get articleCategoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get isPublish => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  ArticleCategory? get articleCategory => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {int id,
      int adminId,
      int articleCategoryId,
      String title,
      String slug,
      String thumbnail,
      String content,
      bool isPublish,
      DateTime createdAt,
      DateTime updatedAt,
      ArticleCategory? articleCategory,
      Author? author});

  $ArticleCategoryCopyWith<$Res>? get articleCategory;
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminId = null,
    Object? articleCategoryId = null,
    Object? title = null,
    Object? slug = null,
    Object? thumbnail = null,
    Object? content = null,
    Object? isPublish = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? articleCategory = freezed,
    Object? author = freezed,
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
      articleCategoryId: null == articleCategoryId
          ? _value.articleCategoryId
          : articleCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublish: null == isPublish
          ? _value.isPublish
          : isPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      articleCategory: freezed == articleCategory
          ? _value.articleCategory
          : articleCategory // ignore: cast_nullable_to_non_nullable
              as ArticleCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArticleCategoryCopyWith<$Res>? get articleCategory {
    if (_value.articleCategory == null) {
      return null;
    }

    return $ArticleCategoryCopyWith<$Res>(_value.articleCategory!, (value) {
      return _then(_value.copyWith(articleCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int adminId,
      int articleCategoryId,
      String title,
      String slug,
      String thumbnail,
      String content,
      bool isPublish,
      DateTime createdAt,
      DateTime updatedAt,
      ArticleCategory? articleCategory,
      Author? author});

  @override
  $ArticleCategoryCopyWith<$Res>? get articleCategory;
  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? adminId = null,
    Object? articleCategoryId = null,
    Object? title = null,
    Object? slug = null,
    Object? thumbnail = null,
    Object? content = null,
    Object? isPublish = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? articleCategory = freezed,
    Object? author = freezed,
  }) {
    return _then(_$ArticleImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      articleCategoryId: null == articleCategoryId
          ? _value.articleCategoryId
          : articleCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isPublish: null == isPublish
          ? _value.isPublish
          : isPublish // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      articleCategory: freezed == articleCategory
          ? _value.articleCategory
          : articleCategory // ignore: cast_nullable_to_non_nullable
              as ArticleCategory?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  _$ArticleImpl(
      {required this.id,
      required this.adminId,
      required this.articleCategoryId,
      required this.title,
      required this.slug,
      required this.thumbnail,
      required this.content,
      required this.isPublish,
      required this.createdAt,
      required this.updatedAt,
      required this.articleCategory,
      required this.author});

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  final int id;
  @override
  final int adminId;
  @override
  final int articleCategoryId;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String thumbnail;
  @override
  final String content;
  @override
  final bool isPublish;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final ArticleCategory? articleCategory;
  @override
  final Author? author;

  @override
  String toString() {
    return 'Article(id: $id, adminId: $adminId, articleCategoryId: $articleCategoryId, title: $title, slug: $slug, thumbnail: $thumbnail, content: $content, isPublish: $isPublish, createdAt: $createdAt, updatedAt: $updatedAt, articleCategory: $articleCategory, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.articleCategoryId, articleCategoryId) ||
                other.articleCategoryId == articleCategoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isPublish, isPublish) ||
                other.isPublish == isPublish) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.articleCategory, articleCategory) ||
                other.articleCategory == articleCategory) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      adminId,
      articleCategoryId,
      title,
      slug,
      thumbnail,
      content,
      isPublish,
      createdAt,
      updatedAt,
      articleCategory,
      author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  factory _Article(
      {required final int id,
      required final int adminId,
      required final int articleCategoryId,
      required final String title,
      required final String slug,
      required final String thumbnail,
      required final String content,
      required final bool isPublish,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final ArticleCategory? articleCategory,
      required final Author? author}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  int get id;
  @override
  int get adminId;
  @override
  int get articleCategoryId;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get thumbnail;
  @override
  String get content;
  @override
  bool get isPublish;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  ArticleCategory? get articleCategory;
  @override
  Author? get author;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
