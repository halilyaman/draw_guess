// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drawing_board_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DrawingBoardStateTearOff {
  const _$DrawingBoardStateTearOff();

  _Waiting waiting(List<Line> lines) {
    return _Waiting(
      lines,
    );
  }

  _Drawing drawing(List<Line> oldLines, Line newLine) {
    return _Drawing(
      oldLines,
      newLine,
    );
  }
}

/// @nodoc
const $DrawingBoardState = _$DrawingBoardStateTearOff();

/// @nodoc
mixin _$DrawingBoardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Line> lines) waiting,
    required TResult Function(List<Line> oldLines, Line newLine) drawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Drawing value) drawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DrawingBoardStateCopyWith<$Res> {
  factory $DrawingBoardStateCopyWith(
          DrawingBoardState value, $Res Function(DrawingBoardState) then) =
      _$DrawingBoardStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DrawingBoardStateCopyWithImpl<$Res>
    implements $DrawingBoardStateCopyWith<$Res> {
  _$DrawingBoardStateCopyWithImpl(this._value, this._then);

  final DrawingBoardState _value;
  // ignore: unused_field
  final $Res Function(DrawingBoardState) _then;
}

/// @nodoc
abstract class _$WaitingCopyWith<$Res> {
  factory _$WaitingCopyWith(_Waiting value, $Res Function(_Waiting) then) =
      __$WaitingCopyWithImpl<$Res>;
  $Res call({List<Line> lines});
}

/// @nodoc
class __$WaitingCopyWithImpl<$Res> extends _$DrawingBoardStateCopyWithImpl<$Res>
    implements _$WaitingCopyWith<$Res> {
  __$WaitingCopyWithImpl(_Waiting _value, $Res Function(_Waiting) _then)
      : super(_value, (v) => _then(v as _Waiting));

  @override
  _Waiting get _value => super._value as _Waiting;

  @override
  $Res call({
    Object? lines = freezed,
  }) {
    return _then(_Waiting(
      lines == freezed
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<Line>,
    ));
  }
}

/// @nodoc

class _$_Waiting extends _Waiting {
  const _$_Waiting(this.lines) : super._();

  @override
  final List<Line> lines;

  @override
  String toString() {
    return 'DrawingBoardState.waiting(lines: $lines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Waiting &&
            const DeepCollectionEquality().equals(other.lines, lines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lines));

  @JsonKey(ignore: true)
  @override
  _$WaitingCopyWith<_Waiting> get copyWith =>
      __$WaitingCopyWithImpl<_Waiting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Line> lines) waiting,
    required TResult Function(List<Line> oldLines, Line newLine) drawing,
  }) {
    return waiting(lines);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
  }) {
    return waiting?.call(lines);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(lines);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Drawing value) drawing,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class _Waiting extends DrawingBoardState {
  const factory _Waiting(List<Line> lines) = _$_Waiting;
  const _Waiting._() : super._();

  List<Line> get lines;
  @JsonKey(ignore: true)
  _$WaitingCopyWith<_Waiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DrawingCopyWith<$Res> {
  factory _$DrawingCopyWith(_Drawing value, $Res Function(_Drawing) then) =
      __$DrawingCopyWithImpl<$Res>;
  $Res call({List<Line> oldLines, Line newLine});

  $LineCopyWith<$Res> get newLine;
}

/// @nodoc
class __$DrawingCopyWithImpl<$Res> extends _$DrawingBoardStateCopyWithImpl<$Res>
    implements _$DrawingCopyWith<$Res> {
  __$DrawingCopyWithImpl(_Drawing _value, $Res Function(_Drawing) _then)
      : super(_value, (v) => _then(v as _Drawing));

  @override
  _Drawing get _value => super._value as _Drawing;

  @override
  $Res call({
    Object? oldLines = freezed,
    Object? newLine = freezed,
  }) {
    return _then(_Drawing(
      oldLines == freezed
          ? _value.oldLines
          : oldLines // ignore: cast_nullable_to_non_nullable
              as List<Line>,
      newLine == freezed
          ? _value.newLine
          : newLine // ignore: cast_nullable_to_non_nullable
              as Line,
    ));
  }

  @override
  $LineCopyWith<$Res> get newLine {
    return $LineCopyWith<$Res>(_value.newLine, (value) {
      return _then(_value.copyWith(newLine: value));
    });
  }
}

/// @nodoc

class _$_Drawing extends _Drawing {
  const _$_Drawing(this.oldLines, this.newLine) : super._();

  @override
  final List<Line> oldLines;
  @override
  final Line newLine;

  @override
  String toString() {
    return 'DrawingBoardState.drawing(oldLines: $oldLines, newLine: $newLine)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Drawing &&
            const DeepCollectionEquality().equals(other.oldLines, oldLines) &&
            const DeepCollectionEquality().equals(other.newLine, newLine));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldLines),
      const DeepCollectionEquality().hash(newLine));

  @JsonKey(ignore: true)
  @override
  _$DrawingCopyWith<_Drawing> get copyWith =>
      __$DrawingCopyWithImpl<_Drawing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Line> lines) waiting,
    required TResult Function(List<Line> oldLines, Line newLine) drawing,
  }) {
    return drawing(oldLines, newLine);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
  }) {
    return drawing?.call(oldLines, newLine);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Line> lines)? waiting,
    TResult Function(List<Line> oldLines, Line newLine)? drawing,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(oldLines, newLine);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Waiting value) waiting,
    required TResult Function(_Drawing value) drawing,
  }) {
    return drawing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
  }) {
    return drawing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Waiting value)? waiting,
    TResult Function(_Drawing value)? drawing,
    required TResult orElse(),
  }) {
    if (drawing != null) {
      return drawing(this);
    }
    return orElse();
  }
}

abstract class _Drawing extends DrawingBoardState {
  const factory _Drawing(List<Line> oldLines, Line newLine) = _$_Drawing;
  const _Drawing._() : super._();

  List<Line> get oldLines;
  Line get newLine;
  @JsonKey(ignore: true)
  _$DrawingCopyWith<_Drawing> get copyWith =>
      throw _privateConstructorUsedError;
}
