import 'dart:ui';

import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

class DrawingBoard extends HookConsumerWidget {
  const DrawingBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emptyLine = Line(points: [], color: Colors.green.value);
    final drawingBoardNotifier = ref.watch(
      drawingBoardNotifierProvider.notifier,
    );
    final currentLine = useRef<Line>(emptyLine);

    void draw(DragUpdateDetails details) {
      final pos = details.localPosition;
      final newPoint = Point(x: pos.dx, y: pos.dy);
      currentLine.value = currentLine.value.copyWith(
        points: [...currentLine.value.points, newPoint],
      );
      drawingBoardNotifier.drawLine(currentLine.value);
    }

    void endDraw(_) {
      if (currentLine.value.points.length == 1) {
        currentLine.value = emptyLine;
      }
      drawingBoardNotifier.endDrawing(currentLine.value);
      currentLine.value = emptyLine;
    }

    return ClipRect(
      child: GestureDetector(
        onPanUpdate: draw,
        onPanEnd: endDraw,
        child: Consumer(
          builder: (_, ref, __) {
            final drawingBoardState = ref.watch(drawingBoardNotifierProvider);
            return drawingBoardState.when(
              waiting: (lines) => CustomPaint(
                size: Size.infinite,
                painter: _DrawingBoardPainter(lines),
              ),
              drawing: (oldLines, newLine) => CustomPaint(
                size: Size.infinite,
                painter: _DrawingBoardPainter([...oldLines, newLine]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _DrawingBoardPainter extends CustomPainter {
  _DrawingBoardPainter(this.lines);

  final List<Line> lines;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawColor(AppColors.white, BlendMode.src);
    for (final line in lines) {
      final paint = Paint()
        ..strokeWidth = 2.0
        ..color = Color(line.color);
      final points = line.points.map((e) => Offset(e.x, e.y)).toList();
      canvas.drawPoints(PointMode.polygon, points, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _DrawingBoardPainter oldDelegate) => true;
}
