// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameRoom _$$_GameRoomFromJson(Map<String, dynamic> json) => _$_GameRoom(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      adminId: json['adminId'] as String,
      inGame: json['inGame'] as bool,
    );

Map<String, dynamic> _$$_GameRoomToJson(_$_GameRoom instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'adminId': instance.adminId,
      'inGame': instance.inGame,
    };
