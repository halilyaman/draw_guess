import 'package:draw_guess/core/core.dart';

part 'line.freezed.dart';
part 'line.g.dart';

@freezed
class Line with _$Line{
  @JsonSerializable(explicitToJson: true)
  const factory Line({
    required List<Point> points,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);
}

@freezed
class Point with _$Point {
  const factory Point({
    required double x,
    required double y,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}
