// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MemberAddress _$MemberAddressFromJson(Map<String, dynamic> json) {
  return _MemberAddress.fromJson(json);
}

/// @nodoc
mixin _$MemberAddress {
  int get id => throw _privateConstructorUsedError;
  int get memberId => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get addressAlias => throw _privateConstructorUsedError;
  String? get addressNote => throw _privateConstructorUsedError;
  bool get isMain => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberAddressCopyWith<MemberAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberAddressCopyWith<$Res> {
  factory $MemberAddressCopyWith(
          MemberAddress value, $Res Function(MemberAddress) then) =
      _$MemberAddressCopyWithImpl<$Res, MemberAddress>;
  @useResult
  $Res call(
      {int id,
      int memberId,
      String address,
      String? addressAlias,
      String? addressNote,
      bool isMain,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$MemberAddressCopyWithImpl<$Res, $Val extends MemberAddress>
    implements $MemberAddressCopyWith<$Res> {
  _$MemberAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? address = null,
    Object? addressAlias = freezed,
    Object? addressNote = freezed,
    Object? isMain = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
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
      isMain: null == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MemberAddressImplCopyWith<$Res>
    implements $MemberAddressCopyWith<$Res> {
  factory _$$MemberAddressImplCopyWith(
          _$MemberAddressImpl value, $Res Function(_$MemberAddressImpl) then) =
      __$$MemberAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int memberId,
      String address,
      String? addressAlias,
      String? addressNote,
      bool isMain,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$MemberAddressImplCopyWithImpl<$Res>
    extends _$MemberAddressCopyWithImpl<$Res, _$MemberAddressImpl>
    implements _$$MemberAddressImplCopyWith<$Res> {
  __$$MemberAddressImplCopyWithImpl(
      _$MemberAddressImpl _value, $Res Function(_$MemberAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? memberId = null,
    Object? address = null,
    Object? addressAlias = freezed,
    Object? addressNote = freezed,
    Object? isMain = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MemberAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as int,
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
      isMain: null == isMain
          ? _value.isMain
          : isMain // ignore: cast_nullable_to_non_nullable
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
class _$MemberAddressImpl implements _MemberAddress {
  const _$MemberAddressImpl(
      {required this.id,
      required this.memberId,
      required this.address,
      this.addressAlias,
      this.addressNote,
      required this.isMain,
      required this.createdAt,
      required this.updatedAt});

  factory _$MemberAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemberAddressImplFromJson(json);

  @override
  final int id;
  @override
  final int memberId;
  @override
  final String address;
  @override
  final String? addressAlias;
  @override
  final String? addressNote;
  @override
  final bool isMain;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'MemberAddress(id: $id, memberId: $memberId, address: $address, addressAlias: $addressAlias, addressNote: $addressNote, isMain: $isMain, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressAlias, addressAlias) ||
                other.addressAlias == addressAlias) &&
            (identical(other.addressNote, addressNote) ||
                other.addressNote == addressNote) &&
            (identical(other.isMain, isMain) || other.isMain == isMain) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, memberId, address,
      addressAlias, addressNote, isMain, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberAddressImplCopyWith<_$MemberAddressImpl> get copyWith =>
      __$$MemberAddressImplCopyWithImpl<_$MemberAddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemberAddressImplToJson(
      this,
    );
  }
}

abstract class _MemberAddress implements MemberAddress {
  const factory _MemberAddress(
      {required final int id,
      required final int memberId,
      required final String address,
      final String? addressAlias,
      final String? addressNote,
      required final bool isMain,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$MemberAddressImpl;

  factory _MemberAddress.fromJson(Map<String, dynamic> json) =
      _$MemberAddressImpl.fromJson;

  @override
  int get id;
  @override
  int get memberId;
  @override
  String get address;
  @override
  String? get addressAlias;
  @override
  String? get addressNote;
  @override
  bool get isMain;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MemberAddressImplCopyWith<_$MemberAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
