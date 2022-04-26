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
      orElse: () => IconButton(
        onPressed: () {
          final gameNotifier = ref.read(gameNotifierProvider.notifier);
          gameState.whenOrNull(
            joined: (gameRoom) {
              final currentUserId =
                  ref.read(firebaseAuthProvider).currentUser!.uid;
              if (currentUserId == gameRoom.adminId) {
                gameNotifier.deleteGameRoom(gameRoom.id);
              } else {
                gameNotifier.leaveGameRoom(gameRoom.id, currentUserId);
              }
            },
          );
        },
        icon: const Icon(MdiIcons.exitRun),
      ),
    );
  }
}