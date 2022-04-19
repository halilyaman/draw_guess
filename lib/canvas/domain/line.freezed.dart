// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Line _$LineFromJson(Map<String, dynamic> json) {
  return _Line.fromJson(json);
}

/// @nodoc
class _$LineTearOff {
  const _$LineTearOff();

  _Line call({required List<Point> points, required int color}) {
    return _Line(
      points: points,
      color: color,
    );
  }

  Line fromJson(Map<String, Object?> json) {
    return Line.fromJson(json);
  }
}

/// @nodoc
const $Line = _$LineTearOff();

/// @nodoc
mixin _$Line {
  List<Point> get points =>
      throw _privateConstructorUsedError; // value of a color. Ex: Colors.green.value
  int get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineCopyWith<Line> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineCopyWith<$Res> {
  factory $LineCopyWith(Line value, $Res Function(Line) then) =
      _$LineCopyWithImpl<$Res>;
  $Res call({List<Point> points, int color});
}

/// @nodoc
class _$LineCopyWithImpl<$Res> implements $LineCopyWith<$Res> {
  _$LineCopyWithImpl(this._value, this._then);

  final Line _value;
  // ignore: unused_field
  final $Res Function(Line) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LineCopyWith<$Res> implements $LineCopyWith<$Res> {
  factory _$LineCopyWith(_Line value, $Res Function(_Line) then) =
      __$LineCopyWithImpl<$Res>;
  @override
  $Res call({List<Point> points, int color});
}

/// @nodoc
class __$LineCopyWithImpl<$Res> extends _$LineCopyWithImpl<$Res>
    implements _$LineCopyWith<$Res> {
  __$LineCopyWithImpl(_Line _value, $Res Function(_Line) _then)
      : super(_value, (v) => _then(v as _Line));

  @override
  _Line get _value => super._value as _Line;

  @override
  $Res call({
    Object? points = freezed,
    Object? color = freezed,
  }) {
    return _then(_Line(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Point>,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Line implements _Line {
  const _$_Line({required this.points, required this.color});

  factory _$_Line.fromJson(Map<String, dynamic> json) => _$$_LineFromJson(json);

  @override
  final List<Point> points;
  @override // value of a color. Ex: Colors.green.value
  final int color;

  @override
  String toString() {
    return 'Line(points: $points, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Line &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$LineCopyWith<_Line> get copyWith =>
      __$LineCopyWithImpl<_Line>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineToJson(this);
  }
}

abstract class _Line implements Line {
  const factory _Line({required List<Point> points, required int color}) =
      _$_Line;

  factory _Line.fromJson(Map<String, dynamic> json) = _$_Line.fromJson;

  @override
  List<Point> get points;
  @override // value of a color. Ex: Colors.green.value
  int get color;
  @override
  @JsonKey(ignore: true)
  _$LineCopyWith<_Line> get copyWith => throw _privateConstructorUsedError;
}

Point _$PointFromJson(Map<String, dynamic> json) {
  return _Point.fromJson(json);
}

/// @nodoc
class _$PointTearOff {
  const _$PointTearOff();

  _Point call({required double x, required double y}) {
    return _Point(
      x: x,
      y: y,
    );
  }

  Point fromJson(Map<String, Object?> json) {
    return Point.fromJson(json);
  }
}

/// @nodoc
const $Point = _$PointTearOff();

/// @nodoc
mixin _$Point {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointCopyWith<Point> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointCopyWith<$Res> {
  factory $PointCopyWith(Point value, $Res Function(Point) then) =
      _$PointCopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class _$PointCopyWithImpl<$Res> implements $PointCopyWith<$Res> {
  _$PointCopyWithImpl(this._value, this._then);

  final Point _value;
  // ignore: unused_field
  final $Res Function(Point) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PointCopyWith<$Res> implements $PointCopyWith<$Res> {
  factory _$PointCopyWith(_Point value, $Res Function(_Point) then) =
      __$PointCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$PointCopyWithImpl<$Res> extends _$PointCopyWithImpl<$Res>
    implements _$PointCopyWith<$Res> {
  __$PointCopyWithImpl(_Point _value, $Res Function(_Point) _then)
      : super(_value, (v) => _then(v as _Point));

  @override
  _Point get _value => super._value as _Point;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_Point(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Point implements _Point {
  const _$_Point({required this.x, required this.y});

  factory _$_Point.fromJson(Map<String, dynamic> json) =>
      _$$_PointFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'Point(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Point &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$PointCopyWith<_Point> get copyWith =>
      __$PointCopyWithImpl<_Point>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointToJson(this);
  }
}

abstract class _Point implements Point {
  const factory _Point({required double x, required double y}) = _$_Point;

  factory _Point.fromJson(Map<String, dynamic> json) = _$_Point.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$PointCopyWith<_Point> get copyWith => throw _privateConstructorUsedError;
}
