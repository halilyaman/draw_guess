import 'dart:ui';

import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

class DrawingBoard extends HookConsumerWidget {
  const DrawingBoard({Key? key}) : super(key: key);

  static const _emptyLine = Line(points: []);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final drawingBoardNotifier = ref.watch(
      drawingBoardNotifierProvider.notifier,
    );
    final currentLine = useRef<Line>(_emptyLine);

    void draw(details) {
      // ignore: avoid_dynamic_calls
      final pos = details.globalPosition as Offset;
      final newPoint = Point(x: pos.dx, y: pos.dy);
      currentLine.value = currentLine.value.copyWith(
        points: [...currentLine.value.points, newPoint],
      );
      drawingBoardNotifier.draw(currentLine.value);
    }

    void endDraw(_) {
      if (currentLine.value.points.length == 1) {
        currentLine.value = _emptyLine;
      }
      drawingBoardNotifier.endDrawing(currentLine.value);
      currentLine.value = _emptyLine;
    }

    return GestureDetector(
      onPanDown: draw,
      onPanUpdate: draw,
      onPanEnd: endDraw,
      child: Consumer(
        builder: (_, ref, __) {
          final drawingBoardState = ref.watch(drawingBoardNotifierProvider);
          return drawingBoardState.when(
            waiting: (lines) => CustomPaint(
              size: Size.infinite,
              painter: DrawingBoardPainter(lines),
            ),
            drawing: (oldLines, newLine) => CustomPaint(
              size: Size.infinite,
              painter: DrawingBoardPainter([...oldLines, newLine]),
            ),
          );
        }
      ),
    );
  }
}

class DrawingBoardPainter extends CustomPainter {
  DrawingBoardPainter(this.lines);

  final List<Line> lines;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 2.0;
    for (final line in lines) {
      final points = line.points.map((e) => Offset(e.x, e.y)).toList();
      canvas.drawPoints(PointMode.polygon, points, paint);
    }
  }

  @override
  bool shouldRepaint(covariant DrawingBoardPainter oldDelegate) {
    return true;
  }
}
