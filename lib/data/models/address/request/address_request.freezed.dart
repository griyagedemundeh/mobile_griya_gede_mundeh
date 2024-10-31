// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressRequest _$AddressRequestFromJson(Map<String, dynamic> json) {
  return _AddressRequest.fromJson(json);
}

/// @nodoc
mixin _$AddressRequest {
  String get address => throw _privateConstructorUsedError;
  String? get addressAlias => throw _privateConstructorUsedError;
  String? get addressNote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressRequestCopyWith<AddressRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressRequestCopyWith<$Res> {
  factory $AddressRequestCopyWith(
          AddressRequest value, $Res Function(AddressRequest) then) =
      _$AddressRequestCopyWithImpl<$Res, AddressRequest>;
  @useResult
  $Res call({String address, String? addressAlias, String? addressNote});
}

/// @nodoc
class _$AddressRequestCopyWithImpl<$Res, $Val extends AddressRequest>
    implements $AddressRequestCopyWith<$Res> {
  _$AddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? addressAlias = freezed,
    Object? addressNote = freezed,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressAlias: freezed == addressAlias
          ? _value.addressAlias
          : addressAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      addressNote: freezed == addressNote
          ? _value.addressNote
          : addressNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressRequestImplCopyWith<$Res>
    implements $AddressRequestCopyWith<$Res> {
  factory _$$AddressRequestImplCopyWith(_$AddressRequestImpl value,
          $Res Function(_$AddressRequestImpl) then) =
      __$$AddressRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address, String? addressAlias, String? addressNote});
}

/// @nodoc
class __$$AddressRequestImplCopyWithImpl<$Res>
    extends _$AddressRequestCopyWithImpl<$Res, _$AddressRequestImpl>
    implements _$$AddressRequestImplCopyWith<$Res> {
  __$$AddressRequestImplCopyWithImpl(
      _$AddressRequestImpl _value, $Res Function(_$AddressRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? addressAlias = freezed,
    Object? addressNote = freezed,
  }) {
    return _then(_$AddressRequestImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressAlias: freezed == addressAlias
          ? _value.addressAlias
          : addressAlias // ignore: cast_nullable_to_non_nullable
              as String?,
      addressNote: freezed == addressNote
          ? _value.addressNote
          : addressNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressRequestImpl implements _AddressRequest {
  _$AddressRequestImpl(
      {required this.address, this.addressAlias, this.addressNote});

  factory _$AddressRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressRequestImplFromJson(json);

  @override
  final String address;
  @override
  final String? addressAlias;
  @override
  final String? addressNote;

  @override
  String toString() {
    return 'AddressRequest(address: $address, addressAlias: $addressAlias, addressNote: $addressNote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressRequestImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressAlias, addressAlias) ||
                other.addressAlias == addressAlias) &&
            (identical(other.addressNote, addressNote) ||
                other.addressNote == addressNote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, addressAlias, addressNote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressRequestImplCopyWith<_$AddressRequestImpl> get copyWith =>
      __$$AddressRequestImplCopyWithImpl<_$AddressRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressRequestImplToJson(
      this,
    );
  }
}

abstract class _AddressRequest implements AddressRequest {
  factory _AddressRequest(
      {required final String address,
      final String? addressAlias,
      final String? addressNote}) = _$AddressRequestImpl;

  factory _AddressRequest.fromJson(Map<String, dynamic> json) =
      _$AddressRequestImpl.fromJson;

  @override
  String get address;
  @override
  String? get addressAlias;
  @override
  String? get addressNote;
  @override
  @JsonKey(ignore: true)
  _$$AddressRequestImplCopyWith<_$AddressRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
