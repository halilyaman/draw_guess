import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';
import 'package:draw_guess/game/shared/hooks.dart';

class StartGameButton extends ConsumerWidget {
  const StartGameButton({
    Key? key,
    required this.gameRoom,
  }) : super(key: key);

  final GameRoom? gameRoom;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUserId = ref.watch(firebaseAuthProvider).currentUser!.uid;
    final isCurrentUserAdmin = currentUserId == gameRoom?.adminId;
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