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
  int get id => throw _privateConstructorUsedError;
  List<CeremonyDocumentation> get ceremonyDocumentation =>
      throw _privateConstructorUsedError;

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
  $Res call({int id, List<CeremonyDocumentation> ceremonyDocumentation});
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
    Object? id = null,
    Object? ceremonyDocumentation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyDocumentation: null == ceremonyDocumentation
          ? _value.ceremonyDocumentation
          : ceremonyDocumentation // ignore: cast_nullable_to_non_nullable
              as List<CeremonyDocumentation>,
    ) as $Val);
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
  $Res call({int id, List<CeremonyDocumentation> ceremonyDocumentation});
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
    Object? id = null,
    Object? ceremonyDocumentation = null,
  }) {
    return _then(_$CeremonyServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ceremonyDocumentation: null == ceremonyDocumentation
          ? _value._ceremonyDocumentation
          : ceremonyDocumentation // ignore: cast_nullable_to_non_nullable
              as List<CeremonyDocumentation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CeremonyServiceImpl implements _CeremonyService {
  const _$CeremonyServiceImpl(
      {required this.id,
      required final List<CeremonyDocumentation> ceremonyDocumentation})
      : _ceremonyDocumentation = ceremonyDocumentation;

  factory _$CeremonyServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CeremonyServiceImplFromJson(json);

  @override
  final int id;
  final List<CeremonyDocumentation> _ceremonyDocumentation;
  @override
  List<CeremonyDocumentation> get ceremonyDocumentation {
    if (_ceremonyDocumentation is EqualUnmodifiableListView)
      return _ceremonyDocumentation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ceremonyDocumentation);
  }

  @override
  String toString() {
    return 'CeremonyService(id: $id, ceremonyDocumentation: $ceremonyDocumentation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CeremonyServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._ceremonyDocumentation, _ceremonyDocumentation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_ceremonyDocumentation));

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
          {required final int id,
          required final List<CeremonyDocumentation> ceremonyDocumentation}) =
      _$CeremonyServiceImpl;

  factory _CeremonyService.fromJson(Map<String, dynamic> json) =
      _$CeremonyServiceImpl.fromJson;

  @override
  int get id;
  @override
  List<CeremonyDocumentation> get ceremonyDocumentation;
  @override
  @JsonKey(ignore: true)
  _$$CeremonyServiceImplCopyWith<_$CeremonyServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
