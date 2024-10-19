// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Auth _$AuthFromJson(Map<String, dynamic> json) {
  return _Auth.fromJson(json);
}

/// @nodoc
mixin _$Auth {
  int get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res, Auth>;
  @useResult
  $Res call(
      {int id,
      String fullName,
      String avatarUrl,
      String email,
      bool isActive,
      String phoneNumber,
      String role,
      String token});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res, $Val extends Auth>
    implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? email = null,
    Object? isActive = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthImplCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$AuthImplCopyWith(
          _$AuthImpl value, $Res Function(_$AuthImpl) then) =
      __$$AuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String fullName,
      String avatarUrl,
      String email,
      bool isActive,
      String phoneNumber,
      String role,
      String token});
}

/// @nodoc
class __$$AuthImplCopyWithImpl<$Res>
    extends _$AuthCopyWithImpl<$Res, _$AuthImpl>
    implements _$$AuthImplCopyWith<$Res> {
  __$$AuthImplCopyWithImpl(_$AuthImpl _value, $Res Function(_$AuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avatarUrl = null,
    Object? email = null,
    Object? isActive = null,
    Object? phoneNumber = null,
    Object? role = null,
    Object? token = null,
  }) {
    return _then(_$AuthImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthImpl with DiagnosticableTreeMixin implements _Auth {
  const _$AuthImpl(
      {required this.id,
      required this.fullName,
      required this.avatarUrl,
      required this.email,
      required this.isActive,
      required this.phoneNumber,
      required this.role,
      required this.token});

  factory _$AuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthImplFromJson(json);

  @override
  final int id;
  @override
  final String fullName;
  @override
  final String avatarUrl;
  @override
  final String email;
  @override
  final bool isActive;
  @override
  final String phoneNumber;
  @override
  final String role;
  @override
  final String token;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Auth(id: $id, fullName: $fullName, avatarUrl: $avatarUrl, email: $email, isActive: $isActive, phoneNumber: $phoneNumber, role: $role, token: $token)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Auth'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fullName', fullName))
      ..add(DiagnosticsProperty('avatarUrl', avatarUrl))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('token', token));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avatarUrl, email,
      isActive, phoneNumber, role, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      __$$AuthImplCopyWithImpl<_$AuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthImplToJson(
      this,
    );
  }
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required final int id,
      required final String fullName,
      required final String avatarUrl,
      required final String email,
      required final bool isActive,
      required final String phoneNumber,
      required final String role,
      required final String token}) = _$AuthImpl;

  factory _Auth.fromJson(Map<String, dynamic> json) = _$AuthImpl.fromJson;

  @override
  int get id;
  @override
  String get fullName;
  @override
  String get avatarUrl;
  @override
  String get email;
  @override
  bool get isActive;
  @override
  String get phoneNumber;
  @override
  String get role;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AuthImplCopyWith<_$AuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
