import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class StartGameButton extends ConsumerWidget {
  const StartGameButton({
    Key? key,
    required this.isCurrentUserAdmin,
    required this.gameRoom,
  }) : super(key: key);

  final bool isCurrentUserAdmin;
  final GameRoom? gameRoom;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: isCurrentUserAdmin,
      child: OutlinedButton(
        onPressed: () {
          if (gameRoom != null) {
            ref.read(gameNotifierProvider.notifier).startGame(gameRoom!);
          }
        },
        child: const Text('Start Game'),
      ),
    );
  }
}