import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class EndGameButton extends HookConsumerWidget {
  const EndGameButton({
    Key? key,
    required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameRoom = useState<GameRoom?>(null);
    ref
        .watch(gameRoomStreamProvider(gameRoomId))
        .whenData((value) => gameRoom.value = value);
    return OutlinedButton(
      onPressed: () {
        if (gameRoom.value != null) {
          ref.read(gameNotifierProvider.notifier).endGame(gameRoom.value!);
        }
      },
      child: const Text('End Game'),
    );
  }
}