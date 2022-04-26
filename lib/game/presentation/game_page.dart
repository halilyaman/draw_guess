import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/shared/hooks.dart';

class GamePage extends HookConsumerWidget {
  const GamePage({
    Key? key,
    @pathParam required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoom = useGameRoom(gameRoomId, ref);
    return AutoRouter.declarative(routes: (_) => [
      if (gameRoom?.inGame == true)
        DrawingBoardRoute(gameRoomId: gameRoomId)
      else
        GameRoomRoute(gameRoomId: gameRoomId),
    ]);
  }
}
