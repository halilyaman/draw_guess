// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Line _$$_LineFromJson(Map<String, dynamic> json) => _$_Line(
      points: (json['points'] as List<dynamic>)
          .map((e) => Point.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LineToJson(_$_Line instance) => <String, dynamic>{
      'points': instance.points.map((e) => e.toJson()).toList(),
    };

_$_Point _$$_PointFromJson(Map<String, dynamic> json) => _$_Point(
      x: (json['x'] as num).toDouble(),
      y: (json['y'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PointToJson(_$_Point instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
