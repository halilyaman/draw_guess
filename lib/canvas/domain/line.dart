// ignore_for_file: invalid_annotation_target

import 'package:draw_guess/core/core.dart';

part 'line.freezed.dart';
part 'line.g.dart';

@freezed
class Line extends Equatable with _$Line {
  @JsonSerializable(explicitToJson: true)
  const factory Line({
    required List<Point> points,
    // value of a color. Ex: Colors.green.value
    required int color,
    required DateTime createdAt,
    required String drawerId,
  }) = _Line;

  factory Line.fromJson(Map<String, dynamic> json) => _$LineFromJson(json);

  const Line._();

  @override
  // TODO: implement props
  List<Object?> get props => [createdAt];
}

@freezed
class Point with _$Point {
  const factory Point({
    required double x,
    required double y,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}
