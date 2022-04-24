// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameStateTearOff {
  const _$GameStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Creating creating() {
    return const _Creating();
  }

  _InGame inGame(GameRoom gameRoom) {
    return _InGame(
      gameRoom,
    );
  }

  _Deleting deleting() {
    return const _Deleting();
  }

  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }
}

/// @nodoc
const $GameState = _$GameStateTearOff();

/// @nodoc
mixin _$GameState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res> implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  final GameState _value;
  // ignore: unused_field
  final $Res Function(GameState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GameState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$CreatingCopyWith<$Res> {
  factory _$CreatingCopyWith(_Creating value, $Res Function(_Creating) then) =
      __$CreatingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$CreatingCopyWith<$Res> {
  __$CreatingCopyWithImpl(_Creating _value, $Res Function(_Creating) _then)
      : super(_value, (v) => _then(v as _Creating));

  @override
  _Creating get _value => super._value as _Creating;
}

/// @nodoc

class _$_Creating implements _Creating {
  const _$_Creating();

  @override
  String toString() {
    return 'GameState.creating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Creating);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }
}

abstract class _Creating implements GameState {
  const factory _Creating() = _$_Creating;
}

/// @nodoc
abstract class _$InGameCopyWith<$Res> {
  factory _$InGameCopyWith(_InGame value, $Res Function(_InGame) then) =
      __$InGameCopyWithImpl<$Res>;
  $Res call({GameRoom gameRoom});

  $GameRoomCopyWith<$Res> get gameRoom;
}

/// @nodoc
class __$InGameCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$InGameCopyWith<$Res> {
  __$InGameCopyWithImpl(_InGame _value, $Res Function(_InGame) _then)
      : super(_value, (v) => _then(v as _InGame));

  @override
  _InGame get _value => super._value as _InGame;

  @override
  $Res call({
    Object? gameRoom = freezed,
  }) {
    return _then(_InGame(
      gameRoom == freezed
          ? _value.gameRoom
          : gameRoom // ignore: cast_nullable_to_non_nullable
              as GameRoom,
    ));
  }

  @override
  $GameRoomCopyWith<$Res> get gameRoom {
    return $GameRoomCopyWith<$Res>(_value.gameRoom, (value) {
      return _then(_value.copyWith(gameRoom: value));
    });
  }
}

/// @nodoc

class _$_InGame implements _InGame {
  const _$_InGame(this.gameRoom);

  @override
  final GameRoom gameRoom;

  @override
  String toString() {
    return 'GameState.inGame(gameRoom: $gameRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InGame &&
            const DeepCollectionEquality().equals(other.gameRoom, gameRoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameRoom));

  @JsonKey(ignore: true)
  @override
  _$InGameCopyWith<_InGame> get copyWith =>
      __$InGameCopyWithImpl<_InGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) {
    return inGame(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) {
    return inGame?.call(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (inGame != null) {
      return inGame(gameRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) {
    return inGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) {
    return inGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inGame != null) {
      return inGame(this);
    }
    return orElse();
  }
}

abstract class _InGame implements GameState {
  const factory _InGame(GameRoom gameRoom) = _$_InGame;

  GameRoom get gameRoom;
  @JsonKey(ignore: true)
  _$InGameCopyWith<_InGame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeletingCopyWith<$Res> {
  factory _$DeletingCopyWith(_Deleting value, $Res Function(_Deleting) then) =
      __$DeletingCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$DeletingCopyWith<$Res> {
  __$DeletingCopyWithImpl(_Deleting _value, $Res Function(_Deleting) _then)
      : super(_value, (v) => _then(v as _Deleting));

  @override
  _Deleting get _value => super._value as _Deleting;
}

/// @nodoc

class _$_Deleting implements _Deleting {
  const _$_Deleting();

  @override
  String toString() {
    return 'GameState.deleting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Deleting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) {
    return deleting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) {
    return deleting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) {
    return deleting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) {
    return deleting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (deleting != null) {
      return deleting(this);
    }
    return orElse();
  }
}

abstract class _Deleting implements GameState {
  const factory _Deleting() = _$_Deleting;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'GameState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() deleting,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? deleting,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Deleting value) deleting,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Deleting value)? deleting,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GameState {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
