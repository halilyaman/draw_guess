import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';
import 'package:draw_guess/game/shared/hooks.dart';

class EndGameButton extends HookConsumerWidget {
  const EndGameButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoomId = ref.watch(gameRoomIdProvider)!;
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