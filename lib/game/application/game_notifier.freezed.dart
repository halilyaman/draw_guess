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

  _Created created(GameRoom gameRoom) {
    return _Created(
      gameRoom,
    );
  }

  _Joining joining() {
    return const _Joining();
  }

  _Joined joined(GameRoom gameRoom) {
    return _Joined(
      gameRoom,
    );
  }

  _InGame inGame(GameRoom gameRoom) {
    return _InGame(
      gameRoom,
    );
  }

  _Leaving leaving() {
    return const _Leaving();
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
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
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
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
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
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
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
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
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
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
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
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
  $Res call({GameRoom gameRoom});

  $GameRoomCopyWith<$Res> get gameRoom;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;

  @override
  $Res call({
    Object? gameRoom = freezed,
  }) {
    return _then(_Created(
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

class _$_Created implements _Created {
  const _$_Created(this.gameRoom);

  @override
  final GameRoom gameRoom;

  @override
  String toString() {
    return 'GameState.created(gameRoom: $gameRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Created &&
            const DeepCollectionEquality().equals(other.gameRoom, gameRoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameRoom));

  @JsonKey(ignore: true)
  @override
  _$CreatedCopyWith<_Created> get copyWith =>
      __$CreatedCopyWithImpl<_Created>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return created(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return created?.call(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(gameRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements GameState {
  const factory _Created(GameRoom gameRoom) = _$_Created;

  GameRoom get gameRoom;
  @JsonKey(ignore: true)
  _$CreatedCopyWith<_Created> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$JoiningCopyWith<$Res> {
  factory _$JoiningCopyWith(_Joining value, $Res Function(_Joining) then) =
      __$JoiningCopyWithImpl<$Res>;
}

/// @nodoc
class __$JoiningCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$JoiningCopyWith<$Res> {
  __$JoiningCopyWithImpl(_Joining _value, $Res Function(_Joining) _then)
      : super(_value, (v) => _then(v as _Joining));

  @override
  _Joining get _value => super._value as _Joining;
}

/// @nodoc

class _$_Joining implements _Joining {
  const _$_Joining();

  @override
  String toString() {
    return 'GameState.joining()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Joining);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return joining();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return joining?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (joining != null) {
      return joining();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return joining(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return joining?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (joining != null) {
      return joining(this);
    }
    return orElse();
  }
}

abstract class _Joining implements GameState {
  const factory _Joining() = _$_Joining;
}

/// @nodoc
abstract class _$JoinedCopyWith<$Res> {
  factory _$JoinedCopyWith(_Joined value, $Res Function(_Joined) then) =
      __$JoinedCopyWithImpl<$Res>;
  $Res call({GameRoom gameRoom});

  $GameRoomCopyWith<$Res> get gameRoom;
}

/// @nodoc
class __$JoinedCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$JoinedCopyWith<$Res> {
  __$JoinedCopyWithImpl(_Joined _value, $Res Function(_Joined) _then)
      : super(_value, (v) => _then(v as _Joined));

  @override
  _Joined get _value => super._value as _Joined;

  @override
  $Res call({
    Object? gameRoom = freezed,
  }) {
    return _then(_Joined(
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

class _$_Joined implements _Joined {
  const _$_Joined(this.gameRoom);

  @override
  final GameRoom gameRoom;

  @override
  String toString() {
    return 'GameState.joined(gameRoom: $gameRoom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Joined &&
            const DeepCollectionEquality().equals(other.gameRoom, gameRoom));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(gameRoom));

  @JsonKey(ignore: true)
  @override
  _$JoinedCopyWith<_Joined> get copyWith =>
      __$JoinedCopyWithImpl<_Joined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return joined(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return joined?.call(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(gameRoom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return joined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return joined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (joined != null) {
      return joined(this);
    }
    return orElse();
  }
}

abstract class _Joined implements GameState {
  const factory _Joined(GameRoom gameRoom) = _$_Joined;

  GameRoom get gameRoom;
  @JsonKey(ignore: true)
  _$JoinedCopyWith<_Joined> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return inGame(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return inGame?.call(gameRoom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
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
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return inGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return inGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
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
abstract class _$LeavingCopyWith<$Res> {
  factory _$LeavingCopyWith(_Leaving value, $Res Function(_Leaving) then) =
      __$LeavingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LeavingCopyWithImpl<$Res> extends _$GameStateCopyWithImpl<$Res>
    implements _$LeavingCopyWith<$Res> {
  __$LeavingCopyWithImpl(_Leaving _value, $Res Function(_Leaving) _then)
      : super(_value, (v) => _then(v as _Leaving));

  @override
  _Leaving get _value => super._value as _Leaving;
}

/// @nodoc

class _$_Leaving implements _Leaving {
  const _$_Leaving();

  @override
  String toString() {
    return 'GameState.leaving()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Leaving);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return leaving();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return leaving?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (leaving != null) {
      return leaving();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Creating value) creating,
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return leaving(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return leaving?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (leaving != null) {
      return leaving(this);
    }
    return orElse();
  }
}

abstract class _Leaving implements GameState {
  const factory _Leaving() = _$_Leaving;
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
    required TResult Function(GameRoom gameRoom) created,
    required TResult Function() joining,
    required TResult Function(GameRoom gameRoom) joined,
    required TResult Function(GameRoom gameRoom) inGame,
    required TResult Function() leaving,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function(GameRoom gameRoom)? created,
    TResult Function()? joining,
    TResult Function(GameRoom gameRoom)? joined,
    TResult Function(GameRoom gameRoom)? inGame,
    TResult Function()? leaving,
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
    required TResult Function(_Created value) created,
    required TResult Function(_Joining value) joining,
    required TResult Function(_Joined value) joined,
    required TResult Function(_InGame value) inGame,
    required TResult Function(_Leaving value) leaving,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Creating value)? creating,
    TResult Function(_Created value)? created,
    TResult Function(_Joining value)? joining,
    TResult Function(_Joined value)? joined,
    TResult Function(_InGame value)? inGame,
    TResult Function(_Leaving value)? leaving,
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
