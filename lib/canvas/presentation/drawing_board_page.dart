import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

class DrawingBoardPage extends StatelessWidget {
  const DrawingBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Expanded(child: DrawingBoard()),
            Consumer(
              builder: (_, ref, __) => ElevatedButton(
                onPressed: () {
                  ref.read(drawingBoardNotifierProvider.notifier).clearBoard();
                },
                child: const Text('Clear'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
