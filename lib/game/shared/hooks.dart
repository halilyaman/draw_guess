import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

GameRoom? useGameRoom(String gameRoomId, WidgetRef ref) {
  final gameRoom = useState<GameRoom?>(null);
  ref
      .watch(gameRoomStreamProvider(gameRoomId))
      .whenData((value) => gameRoom.value = value);
  return gameRoom.value;
}