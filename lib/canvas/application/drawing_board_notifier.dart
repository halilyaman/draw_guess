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
  DrawingBoardNotifier() : super(const DrawingBoardState.waiting([]));

  void drawLine(Line newLine) {
    state = DrawingBoardState.drawing(state.lines, newLine);
  }

  void endDrawing(Line lastDrawnLine) {
    state = DrawingBoardState.waiting([...state.lines, lastDrawnLine]);
  }

  void clearBoard() {
    state = const DrawingBoardState.waiting([]);
  }

  void back() {
    if (state.lines.isNotEmpty) {
      state.lines.removeLast();
      state = DrawingBoardState.waiting(state.lines);
    }
  }
}

final drawingBoardNotifierProvider =
    StateNotifierProvider.autoDispose<DrawingBoardNotifier, DrawingBoardState>(
  (ref) => DrawingBoardNotifier(),
);
