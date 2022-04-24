// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'validator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValidatorTypeTearOff {
  const _$ValidatorTypeTearOff();

  _NotEmpty notEmpty() {
    return const _NotEmpty();
  }
}

/// @nodoc
const $ValidatorType = _$ValidatorTypeTearOff();

/// @nodoc
mixin _$ValidatorType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotEmpty value) notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotEmpty value)? notEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotEmpty value)? notEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorTypeCopyWith<$Res> {
  factory $ValidatorTypeCopyWith(
          ValidatorType value, $Res Function(ValidatorType) then) =
      _$ValidatorTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidatorTypeCopyWithImpl<$Res>
    implements $ValidatorTypeCopyWith<$Res> {
  _$ValidatorTypeCopyWithImpl(this._value, this._then);

  final ValidatorType _value;
  // ignore: unused_field
  final $Res Function(ValidatorType) _then;
}

/// @nodoc
abstract class _$NotEmptyCopyWith<$Res> {
  factory _$NotEmptyCopyWith(_NotEmpty value, $Res Function(_NotEmpty) then) =
      __$NotEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotEmptyCopyWithImpl<$Res> extends _$ValidatorTypeCopyWithImpl<$Res>
    implements _$NotEmptyCopyWith<$Res> {
  __$NotEmptyCopyWithImpl(_NotEmpty _value, $Res Function(_NotEmpty) _then)
      : super(_value, (v) => _then(v as _NotEmpty));

  @override
  _NotEmpty get _value => super._value as _NotEmpty;
}

/// @nodoc

class _$_NotEmpty implements _NotEmpty {
  const _$_NotEmpty();

  @override
  String toString() {
    return 'ValidatorType.notEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEmpty,
  }) {
    return notEmpty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notEmpty,
  }) {
    return notEmpty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEmpty,
    required TResult orElse(),
  }) {
    if (notEmpty != null) {
      return notEmpty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotEmpty value) notEmpty,
  }) {
    return notEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotEmpty value)? notEmpty,
  }) {
    return notEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotEmpty value)? notEmpty,
    required TResult orElse(),
  }) {
    if (notEmpty != null) {
      return notEmpty(this);
    }
    return orElse();
  }
}

abstract class _NotEmpty implements ValidatorType {
  const factory _NotEmpty() = _$_NotEmpty;
}

/// @nodoc
class _$ValidatorTearOff {
  const _$ValidatorTearOff();

  _Validator call(List<ValidatorType> validators) {
    return _Validator(
      validators,
    );
  }
}

/// @nodoc
const $Validator = _$ValidatorTearOff();

/// @nodoc
mixin _$Validator {
  List<ValidatorType> get validators => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidatorCopyWith<Validator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidatorCopyWith<$Res> {
  factory $ValidatorCopyWith(Validator value, $Res Function(Validator) then) =
      _$ValidatorCopyWithImpl<$Res>;
  $Res call({List<ValidatorType> validators});
}

/// @nodoc
class _$ValidatorCopyWithImpl<$Res> implements $ValidatorCopyWith<$Res> {
  _$ValidatorCopyWithImpl(this._value, this._then);

  final Validator _value;
  // ignore: unused_field
  final $Res Function(Validator) _then;

  @override
  $Res call({
    Object? validators = freezed,
  }) {
    return _then(_value.copyWith(
      validators: validators == freezed
          ? _value.validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<ValidatorType>,
    ));
  }
}

/// @nodoc
abstract class _$ValidatorCopyWith<$Res> implements $ValidatorCopyWith<$Res> {
  factory _$ValidatorCopyWith(
          _Validator value, $Res Function(_Validator) then) =
      __$ValidatorCopyWithImpl<$Res>;
  @override
  $Res call({List<ValidatorType> validators});
}

/// @nodoc
class __$ValidatorCopyWithImpl<$Res> extends _$ValidatorCopyWithImpl<$Res>
    implements _$ValidatorCopyWith<$Res> {
  __$ValidatorCopyWithImpl(_Validator _value, $Res Function(_Validator) _then)
      : super(_value, (v) => _then(v as _Validator));

  @override
  _Validator get _value => super._value as _Validator;

  @override
  $Res call({
    Object? validators = freezed,
  }) {
    return _then(_Validator(
      validators == freezed
          ? _value.validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<ValidatorType>,
    ));
  }
}

/// @nodoc

class _$_Validator extends _Validator {
  const _$_Validator(this.validators) : super._();

  @override
  final List<ValidatorType> validators;

  @override
  String toString() {
    return 'Validator(validators: $validators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Validator &&
            const DeepCollectionEquality()
                .equals(other.validators, validators));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(validators));

  @JsonKey(ignore: true)
  @override
  _$ValidatorCopyWith<_Validator> get copyWith =>
      __$ValidatorCopyWithImpl<_Validator>(this, _$identity);
}

abstract class _Validator extends Validator {
  const factory _Validator(List<ValidatorType> validators) = _$_Validator;
  const _Validator._() : super._();

  @override
  List<ValidatorType> get validators;
  @override
  @JsonKey(ignore: true)
  _$ValidatorCopyWith<_Validator> get copyWith =>
      throw _privateConstructorUsedError;
}
