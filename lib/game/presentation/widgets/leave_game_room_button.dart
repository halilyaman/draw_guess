import 'package:draw_guess/core/core.dart';

class LeaveGameRoomButton extends ConsumerWidget {
  const LeaveGameRoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameNotifierProvider);
    return gameState.maybeWhen(
      leaving: () => const LoadingIndicator(),
      orElse: () => ElevatedButton(
        onPressed: () {
          final gameNotifier = ref.read(gameNotifierProvider.notifier);
          gameState.whenOrNull(
            joined: (gameRoom) => gameNotifier.deleteGameRoom(gameRoom.id),
          );
        },
        child: const Text('Leave Game Room'),
      ),
    );
  }
}