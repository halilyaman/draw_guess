import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

class DrawingBoardPage extends StatelessWidget {
  const DrawingBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey,
        body: Column(
          children: [
            const EmptyHeight(),
            const _LeaveGameRoomButton(),
            Expanded(
              child: Padding(
                padding: const AppPadding.all() * 5,
                child: const BorderRadiusBox(
                  force: true,
                  child: DrawingBoard(),
                ),
              ),
            ),
            const _DrawingControllerButtons(),
            const EmptyHeight() * 3,
          ],
        ),
      ),
    );
  }
}

class _LeaveGameRoomButton extends ConsumerWidget {
  const _LeaveGameRoomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameNotifierProvider);
    return gameState.maybeWhen(
      deleting: () => const LoadingIndicator(),
      orElse: () => ElevatedButton(
        onPressed: () {
          final gameNotifier = ref.read(gameNotifierProvider.notifier);
          gameState.whenOrNull(
            inGame: (gameRoom) => gameNotifier.deleteGameRoom(gameRoom.id),
          );
        },
        child: const Text('Leave Game Room'),
      ),
    );
  }
}

class _DrawingControllerButtons extends ConsumerWidget {
  const _DrawingControllerButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(drawingBoardNotifierProvider.notifier).clearBoard();
          },
          child: const Text('Clear Board'),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(drawingBoardNotifierProvider.notifier).back();
          },
          child: const Text('Back'),
        ),
      ],
    );
  }
}
