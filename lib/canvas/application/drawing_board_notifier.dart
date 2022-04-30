import 'package:draw_guess/canvas/canvas.dart';
import 'package:draw_guess/core/core.dart';

part 'drawing_board_notifier.freezed.dart';

@freezed
class DrawingBoardState with _$DrawingBoardState {
  const factory DrawingBoardState.waiting(List<Line> lines) = _Waiting;

  const factory DrawingBoardState.drawing(
    List<Line> oldLines,
    Line newLine,
  ) = _Drawing;

  const DrawingBoardState._();

  List<Line> get lines => map(
        waiting: (_) => _.lines,
        drawing: (_) => _.oldLines,
      );
}

class DrawingBoardNotifier extends StateNotifier<DrawingBoardState> {
  DrawingBoardNotifier()
      : super(const DrawingBoardState.waiting([]));

  void drawLine(Line newLine) {
    state = DrawingBoardState.drawing(state.lines, newLine);
  }

  void endDrawing(Line lastDrawnLine) {
    state = DrawingBoardState.waiting([...state.lines, lastDrawnLine]);
  }

  void addNewLines(List<Line> lines) {
    for (final line in lines) {
      if (state.lines.contains(line)) {
        state.lines.removeWhere((e) => e == line);
      }
    }
    state = DrawingBoardState.waiting([...state.lines, ...lines]);
  }

  void setLines(List<Line> lines) {
    state = DrawingBoardState.waiting(lines);
  }

  void removeLine(Line line) {
    state.lines.removeWhere((e) => e == line);
    state = DrawingBoardState.waiting(state.lines);
  }

  List<Line> clearBoard() {
    final lines = List<Line>.from(state.lines);
    state = const DrawingBoardState.waiting([]);
    return lines;
  }

  Line? back() {
    if (state.lines.isNotEmpty) {
      final line = state.lines.removeLast();
      state = DrawingBoardState.waiting(state.lines);
      return line;
    }
    return null;
  }
}
