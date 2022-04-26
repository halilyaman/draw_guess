import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/shared/hooks.dart';

class EndGameButton extends HookConsumerWidget {
  const EndGameButton({
    Key? key,
    required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoom = useGameRoom(gameRoomId, ref);
    return OutlinedButton(
      onPressed: () {
        if (gameRoom != null) {
          ref.read(gameNotifierProvider.notifier).endGame(gameRoom);
        }
      },
      child: const Text('End Game'),
    );
  }
}