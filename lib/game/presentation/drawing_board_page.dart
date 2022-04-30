import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';
import 'package:draw_guess/game/game.dart';
import 'package:draw_guess/game/shared/hooks.dart';

class DrawingBoardPage extends HookConsumerWidget {
  const DrawingBoardPage({
    Key? key,
    @pathParam required this.gameRoomId,
  }) : super(key: key);

  final String gameRoomId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameNotifier = ref.watch(gameNotifierProvider.notifier);
    final uid = ref.watch(firebaseAuthProvider).currentUser!.uid;
    final keys = useRef([const Key('synchronizer_key')]);
    final f = useRef<VoidCallback?>(null);
    usePeriodicLineSynchronizer(f, keys.value);
    final canvasNotifier = ref.watch(drawingBoardNotifierProvider.notifier);
    ref.listen<DrawingBoardState>(drawingBoardNotifierProvider, (previous, next) {
      next.whenOrNull(
        drawing: (lines, newLine) {
          f.value = () => gameNotifier.updateCanvas(gameRoomId, newLine);
        },
      );
    });
    ref.watch(canvasStreamProvider(gameRoomId)).whenData(
          (lines) => Future.microtask(
            () {
              if (lines.isEmpty) {
                canvasNotifier.setLines([]);
              }
              final newLines = lines.where((e) => e.drawerId != uid).toList();
              canvasNotifier.addNewLines(newLines);
            },
          ),
        );
    ref.watch(canvasRemovedLineStreamProvider(gameRoomId)).whenData(
          (line) => Future.microtask(
            () {
              canvasNotifier.removeLine(line);
            },
          ),
        );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey,
        body: Column(
          children: [
            const EmptyHeight(),
            const EndGameButton(),
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
    final gameId = ref.watch(gameRoomIdProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () async {
            ref.read(drawingBoardNotifierProvider.notifier).clearBoard();
            await ref.read(gameNotifierProvider.notifier).clearCanvas(gameId!);
          },
          child: const Text('Clear Board'),
        ),
        ElevatedButton(
          onPressed: () async {
            final removedLine =
                ref.read(drawingBoardNotifierProvider.notifier).back();
            if (removedLine != null) {
              await ref.read(gameNotifierProvider.notifier).deleteLine(
                    gameId!,
                    removedLine,
                  );
            }
          },
          child: const Text('Back'),
        ),
      ],
    );
  }
}
