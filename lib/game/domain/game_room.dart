import 'package:draw_guess/core/core.dart';

part 'game_room.freezed.dart';
part 'game_room.g.dart';

@freezed
class GameRoom with _$GameRoom {
  const factory GameRoom({
    required String id,
    required DateTime createdAt,
    required String adminId,
    required bool inGame,
  }) = _GameRoom;

  factory GameRoom.fromJson(Map<String, dynamic> json) =>
      _$GameRoomFromJson(json);
}
