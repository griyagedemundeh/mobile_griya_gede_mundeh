// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiBaseResponse<T> _$ApiBaseResponseFromJson<T>(Map<String, dynamic> json) {
  return _ApiBaseResponse<T>.fromJson(json);
}

/// @nodoc
mixin _$ApiBaseResponse<T> {
  int get status => throw _privateConstructorUsedError;
  dynamic get message =>
      throw _privateConstructorUsedError; // @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
  dynamic get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiBaseResponseCopyWith<T, ApiBaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBaseResponseCopyWith<T, $Res> {
  factory $ApiBaseResponseCopyWith(
          ApiBaseResponse<T> value, $Res Function(ApiBaseResponse<T>) then) =
      _$ApiBaseResponseCopyWithImpl<T, $Res, ApiBaseResponse<T>>;
  @useResult
  $Res call({int status, dynamic message, dynamic data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ApiBaseResponseCopyWithImpl<T, $Res, $Val extends ApiBaseResponse<T>>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  _$ApiBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiBaseResponseImplCopyWith<T, $Res>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  factory _$$ApiBaseResponseImplCopyWith(_$ApiBaseResponseImpl<T> value,
          $Res Function(_$ApiBaseResponseImpl<T>) then) =
      __$$ApiBaseResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int status, dynamic message, dynamic data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ApiBaseResponseImplCopyWithImpl<T, $Res>
    extends _$ApiBaseResponseCopyWithImpl<T, $Res, _$ApiBaseResponseImpl<T>>
    implements _$$ApiBaseResponseImplCopyWith<T, $Res> {
  __$$ApiBaseResponseImplCopyWithImpl(_$ApiBaseResponseImpl<T> _value,
      $Res Function(_$ApiBaseResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? data = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$ApiBaseResponseImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiBaseResponseImpl<T>
    with DiagnosticableTreeMixin
    implements _ApiBaseResponse<T> {
  const _$ApiBaseResponseImpl(
      {required this.status,
      required this.message,
      required this.data,
      this.meta});

  factory _$ApiBaseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiBaseResponseImplFromJson(json);

  @override
  final int status;
  @override
  final dynamic message;
// @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
  @override
  final dynamic data;
  @override
  final Meta? meta;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiBaseResponse<$T>(status: $status, message: $message, data: $data, meta: $meta)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiBaseResponse<$T>'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBaseResponseImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data),
      meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      __$$ApiBaseResponseImplCopyWithImpl<T, _$ApiBaseResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiBaseResponseImplToJson<T>(
      this,
    );
  }
}

abstract class _ApiBaseResponse<T> implements ApiBaseResponse<T> {
  const factory _ApiBaseResponse(
      {required final int status,
      required final dynamic message,
      required final dynamic data,
      final Meta? meta}) = _$ApiBaseResponseImpl<T>;

  factory _ApiBaseResponse.fromJson(Map<String, dynamic> json) =
      _$ApiBaseResponseImpl<T>.fromJson;

  @override
  int get status;
  @override
  dynamic get message;
  @override // @JsonKey(fromJson: _dataFromJson, toJson: _dataToJson) required T data,
  dynamic get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
