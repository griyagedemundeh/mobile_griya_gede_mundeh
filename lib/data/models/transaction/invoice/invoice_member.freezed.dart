// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceMember _$InvoiceMemberFromJson(Map<String, dynamic> json) {
  return _InvoiceMember.fromJson(json);
}

/// @nodoc
mixin _$InvoiceMember {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceMemberCopyWith<InvoiceMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceMemberCopyWith<$Res> {
  factory $InvoiceMemberCopyWith(
          InvoiceMember value, $Res Function(InvoiceMember) then) =
      _$InvoiceMemberCopyWithImpl<$Res, InvoiceMember>;
  @useResult
  $Res call({int userId, int id, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$InvoiceMemberCopyWithImpl<$Res, $Val extends InvoiceMember>
    implements $InvoiceMemberCopyWith<$Res> {
  _$InvoiceMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvoiceMemberImplCopyWith<$Res>
    implements $InvoiceMemberCopyWith<$Res> {
  factory _$$InvoiceMemberImplCopyWith(
          _$InvoiceMemberImpl value, $Res Function(_$InvoiceMemberImpl) then) =
      __$$InvoiceMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int id, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$InvoiceMemberImplCopyWithImpl<$Res>
    extends _$InvoiceMemberCopyWithImpl<$Res, _$InvoiceMemberImpl>
    implements _$$InvoiceMemberImplCopyWith<$Res> {
  __$$InvoiceMemberImplCopyWithImpl(
      _$InvoiceMemberImpl _value, $Res Function(_$InvoiceMemberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
    Object? user = null,
  }) {
    return _then(_$InvoiceMemberImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceMemberImpl implements _InvoiceMember {
  const _$InvoiceMemberImpl(
      {required this.userId, required this.id, required this.user});

  factory _$InvoiceMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceMemberImplFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final User user;

  @override
  String toString() {
    return 'InvoiceMember(userId: $userId, id: $id, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceMemberImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceMemberImplCopyWith<_$InvoiceMemberImpl> get copyWith =>
      __$$InvoiceMemberImplCopyWithImpl<_$InvoiceMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceMemberImplToJson(
      this,
    );
  }
}

abstract class _InvoiceMember implements InvoiceMember {
  const factory _InvoiceMember(
      {required final int userId,
      required final int id,
      required final User user}) = _$InvoiceMemberImpl;

  factory _InvoiceMember.fromJson(Map<String, dynamic> json) =
      _$InvoiceMemberImpl.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceMemberImplCopyWith<_$InvoiceMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
