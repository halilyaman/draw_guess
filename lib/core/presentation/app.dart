import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

class DrawGuessApp extends StatelessWidget {
  const DrawGuessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draw & Guess',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawingBoardPage(),
    );
  }
}