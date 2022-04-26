import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({
    Key? key,
    @pathParam required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoom = useState<GameRoom?>(null);
    ref
        .watch(gameRoomStreamProvider(gameRoomId))
        .whenData((value) => gameRoom.value = value);
    return AutoRouter.declarative(routes: (_) => [
      if (gameRoom.value?.inGame == true)
        DrawingBoardRoute(gameRoomId: gameRoomId)
      else
        GameRoomRoute(gameRoomId: gameRoomId),
    ]);
  }
}
