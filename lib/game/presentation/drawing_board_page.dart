import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';

class DrawingBoardPage extends StatelessWidget {
  const DrawingBoardPage({
    Key? key,
    @pathParam required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey,
        body: Column(
          children: [
            const EmptyHeight(),
            EndGameButton(gameRoomId: gameRoomId,),
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
