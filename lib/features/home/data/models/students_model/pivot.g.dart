// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pivot _$PivotFromJson(Map<String, dynamic> json) => Pivot(
      userId: (json['user_id'] as num?)?.toInt(),
      levelId: (json['level_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PivotToJson(Pivot instance) => <String, dynamic>{
      'user_id': instance.userId,
      'level_id': instance.levelId,
    };
