// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameRoom _$GameRoomFromJson(Map<String, dynamic> json) {
  return _GameRoom.fromJson(json);
}

/// @nodoc
class _$GameRoomTearOff {
  const _$GameRoomTearOff();

  _GameRoom call({required String id, required DateTime createdAt}) {
    return _GameRoom(
      id: id,
      createdAt: createdAt,
    );
  }

  GameRoom fromJson(Map<String, Object?> json) {
    return GameRoom.fromJson(json);
  }
}

/// @nodoc
const $GameRoom = _$GameRoomTearOff();

/// @nodoc
mixin _$GameRoom {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameRoomCopyWith<GameRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameRoomCopyWith<$Res> {
  factory $GameRoomCopyWith(GameRoom value, $Res Function(GameRoom) then) =
      _$GameRoomCopyWithImpl<$Res>;
  $Res call({String id, DateTime createdAt});
}

/// @nodoc
class _$GameRoomCopyWithImpl<$Res> implements $GameRoomCopyWith<$Res> {
  _$GameRoomCopyWithImpl(this._value, this._then);

  final GameRoom _value;
  // ignore: unused_field
  final $Res Function(GameRoom) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$GameRoomCopyWith<$Res> implements $GameRoomCopyWith<$Res> {
  factory _$GameRoomCopyWith(_GameRoom value, $Res Function(_GameRoom) then) =
      __$GameRoomCopyWithImpl<$Res>;
  @override
  $Res call({String id, DateTime createdAt});
}

/// @nodoc
class __$GameRoomCopyWithImpl<$Res> extends _$GameRoomCopyWithImpl<$Res>
    implements _$GameRoomCopyWith<$Res> {
  __$GameRoomCopyWithImpl(_GameRoom _value, $Res Function(_GameRoom) _then)
      : super(_value, (v) => _then(v as _GameRoom));

  @override
  _GameRoom get _value => super._value as _GameRoom;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_GameRoom(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GameRoom implements _GameRoom {
  const _$_GameRoom({required this.id, required this.createdAt});

  factory _$_GameRoom.fromJson(Map<String, dynamic> json) =>
      _$$_GameRoomFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'GameRoom(id: $id, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameRoom &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$GameRoomCopyWith<_GameRoom> get copyWith =>
      __$GameRoomCopyWithImpl<_GameRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameRoomToJson(this);
  }
}

abstract class _GameRoom implements GameRoom {
  const factory _GameRoom({required String id, required DateTime createdAt}) =
      _$_GameRoom;

  factory _GameRoom.fromJson(Map<String, dynamic> json) = _$_GameRoom.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$GameRoomCopyWith<_GameRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
