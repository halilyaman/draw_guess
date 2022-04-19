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
            Expanded(
              child: Padding(
                padding: const AppPadding.all() * 5,
                child: const BorderRadiusBox(
                  force: true,
                  child: DrawingBoard(),
                ),
              ),
            ),
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
