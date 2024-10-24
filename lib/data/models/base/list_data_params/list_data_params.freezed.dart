// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_data_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListDataParams _$ListDataParamsFromJson(Map<String, dynamic> json) {
  return _ListDataParams.fromJson(json);
}

/// @nodoc
mixin _$ListDataParams {
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDataParamsCopyWith<ListDataParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDataParamsCopyWith<$Res> {
  factory $ListDataParamsCopyWith(
          ListDataParams value, $Res Function(ListDataParams) then) =
      _$ListDataParamsCopyWithImpl<$Res, ListDataParams>;
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class _$ListDataParamsCopyWithImpl<$Res, $Val extends ListDataParams>
    implements $ListDataParamsCopyWith<$Res> {
  _$ListDataParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDataParamsImplCopyWith<$Res>
    implements $ListDataParamsCopyWith<$Res> {
  factory _$$ListDataParamsImplCopyWith(_$ListDataParamsImpl value,
          $Res Function(_$ListDataParamsImpl) then) =
      __$$ListDataParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int limit});
}

/// @nodoc
class __$$ListDataParamsImplCopyWithImpl<$Res>
    extends _$ListDataParamsCopyWithImpl<$Res, _$ListDataParamsImpl>
    implements _$$ListDataParamsImplCopyWith<$Res> {
  __$$ListDataParamsImplCopyWithImpl(
      _$ListDataParamsImpl _value, $Res Function(_$ListDataParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$ListDataParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDataParamsImpl implements _ListDataParams {
  _$ListDataParamsImpl({required this.page, required this.limit});

  factory _$ListDataParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDataParamsImplFromJson(json);

  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'ListDataParams(page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDataParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDataParamsImplCopyWith<_$ListDataParamsImpl> get copyWith =>
      __$$ListDataParamsImplCopyWithImpl<_$ListDataParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDataParamsImplToJson(
      this,
    );
  }
}

abstract class _ListDataParams implements ListDataParams {
  factory _ListDataParams({required final int page, required final int limit}) =
      _$ListDataParamsImpl;

  factory _ListDataParams.fromJson(Map<String, dynamic> json) =
      _$ListDataParamsImpl.fromJson;

  @override
  int get page;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$ListDataParamsImplCopyWith<_$ListDataParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
