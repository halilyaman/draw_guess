// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Server server([String? message]) {
    return _Server(
      message,
    );
  }

  _Local local([String? message]) {
    return _Local(
      message,
    );
  }

  _Any any([String? message]) {
    return _Any(
      message,
    );
  }

  ValidatorFailure validator(List<ValidatorType> failedValidators) {
    return ValidatorFailure(
      failedValidators,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) local,
    required TResult Function(String? message) any,
    required TResult Function(List<ValidatorType> failedValidators) validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Local value) local,
    required TResult Function(_Any value) any,
    required TResult Function(ValidatorFailure value) validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$ServerCopyWith<$Res> {
  factory _$ServerCopyWith(_Server value, $Res Function(_Server) then) =
      __$ServerCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$ServerCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerCopyWith<$Res> {
  __$ServerCopyWithImpl(_Server _value, $Res Function(_Server) _then)
      : super(_value, (v) => _then(v as _Server));

  @override
  _Server get _value => super._value as _Server;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Server(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Server implements _Server {
  const _$_Server([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Server &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ServerCopyWith<_Server> get copyWith =>
      __$ServerCopyWithImpl<_Server>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) local,
    required TResult Function(String? message) any,
    required TResult Function(List<ValidatorType> failedValidators) validator,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Local value) local,
    required TResult Function(_Any value) any,
    required TResult Function(ValidatorFailure value) validator,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failure {
  const factory _Server([String? message]) = _$_Server;

  String? get message;
  @JsonKey(ignore: true)
  _$ServerCopyWith<_Server> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocalCopyWith<$Res> {
  factory _$LocalCopyWith(_Local value, $Res Function(_Local) then) =
      __$LocalCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$LocalCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$LocalCopyWith<$Res> {
  __$LocalCopyWithImpl(_Local _value, $Res Function(_Local) _then)
      : super(_value, (v) => _then(v as _Local));

  @override
  _Local get _value => super._value as _Local;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Local(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Local implements _Local {
  const _$_Local([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.local(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Local &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$LocalCopyWith<_Local> get copyWith =>
      __$LocalCopyWithImpl<_Local>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) local,
    required TResult Function(String? message) any,
    required TResult Function(List<ValidatorType> failedValidators) validator,
  }) {
    return local(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
  }) {
    return local?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Local value) local,
    required TResult Function(_Any value) any,
    required TResult Function(ValidatorFailure value) validator,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _Local implements Failure {
  const factory _Local([String? message]) = _$_Local;

  String? get message;
  @JsonKey(ignore: true)
  _$LocalCopyWith<_Local> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AnyCopyWith<$Res> {
  factory _$AnyCopyWith(_Any value, $Res Function(_Any) then) =
      __$AnyCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$AnyCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$AnyCopyWith<$Res> {
  __$AnyCopyWithImpl(_Any _value, $Res Function(_Any) _then)
      : super(_value, (v) => _then(v as _Any));

  @override
  _Any get _value => super._value as _Any;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Any(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Any implements _Any {
  const _$_Any([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.any(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Any &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$AnyCopyWith<_Any> get copyWith =>
      __$AnyCopyWithImpl<_Any>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) local,
    required TResult Function(String? message) any,
    required TResult Function(List<ValidatorType> failedValidators) validator,
  }) {
    return any(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
  }) {
    return any?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Local value) local,
    required TResult Function(_Any value) any,
    required TResult Function(ValidatorFailure value) validator,
  }) {
    return any(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
  }) {
    return any?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
    required TResult orElse(),
  }) {
    if (any != null) {
      return any(this);
    }
    return orElse();
  }
}

abstract class _Any implements Failure {
  const factory _Any([String? message]) = _$_Any;

  String? get message;
  @JsonKey(ignore: true)
  _$AnyCopyWith<_Any> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorFailureCopyWith<$Res> {
  factory $ValidatorFailureCopyWith(
          ValidatorFailure value, $Res Function(ValidatorFailure) then) =
      _$ValidatorFailureCopyWithImpl<$Res>;
  $Res call({List<ValidatorType> failedValidators});
}

/// @nodoc
class _$ValidatorFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements $ValidatorFailureCopyWith<$Res> {
  _$ValidatorFailureCopyWithImpl(
      ValidatorFailure _value, $Res Function(ValidatorFailure) _then)
      : super(_value, (v) => _then(v as ValidatorFailure));

  @override
  ValidatorFailure get _value => super._value as ValidatorFailure;

  @override
  $Res call({
    Object? failedValidators = freezed,
  }) {
    return _then(ValidatorFailure(
      failedValidators == freezed
          ? _value.failedValidators
          : failedValidators // ignore: cast_nullable_to_non_nullable
              as List<ValidatorType>,
    ));
  }
}

/// @nodoc

class _$ValidatorFailure implements ValidatorFailure {
  const _$ValidatorFailure(this.failedValidators);

  @override
  final List<ValidatorType> failedValidators;

  @override
  String toString() {
    return 'Failure.validator(failedValidators: $failedValidators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidatorFailure &&
            const DeepCollectionEquality()
                .equals(other.failedValidators, failedValidators));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValidators));

  @JsonKey(ignore: true)
  @override
  $ValidatorFailureCopyWith<ValidatorFailure> get copyWith =>
      _$ValidatorFailureCopyWithImpl<ValidatorFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) server,
    required TResult Function(String? message) local,
    required TResult Function(String? message) any,
    required TResult Function(List<ValidatorType> failedValidators) validator,
  }) {
    return validator(failedValidators);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
  }) {
    return validator?.call(failedValidators);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? server,
    TResult Function(String? message)? local,
    TResult Function(String? message)? any,
    TResult Function(List<ValidatorType> failedValidators)? validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator(failedValidators);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Local value) local,
    required TResult Function(_Any value) any,
    required TResult Function(ValidatorFailure value) validator,
  }) {
    return validator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
  }) {
    return validator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Local value)? local,
    TResult Function(_Any value)? any,
    TResult Function(ValidatorFailure value)? validator,
    required TResult orElse(),
  }) {
    if (validator != null) {
      return validator(this);
    }
    return orElse();
  }
}

abstract class ValidatorFailure implements Failure {
  const factory ValidatorFailure(List<ValidatorType> failedValidators) =
      _$ValidatorFailure;

  List<ValidatorType> get failedValidators;
  @JsonKey(ignore: true)
  $ValidatorFailureCopyWith<ValidatorFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
