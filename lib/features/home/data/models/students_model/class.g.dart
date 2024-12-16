// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Class _$ClassFromJson(Map<String, dynamic> json) => Class(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'],
      name: json['name'] as String?,
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      levelId: (json['level_id'] as num?)?.toInt(),
      supervisorId: json['supervisor_id'],
      teacherId: json['teacher_id'],
      coTeacherId: json['co_teacher_id'],
      removed: (json['removed'] as num?)?.toInt(),
      searchText: json['search_text'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      pivot: json['pivot'] == null
          ? null
          : Pivot.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ClassToJson(Class instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'level_id': instance.levelId,
      'supervisor_id': instance.supervisorId,
      'teacher_id': instance.teacherId,
      'co_teacher_id': instance.coTeacherId,
      'removed': instance.removed,
      'search_text': instance.searchText,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pivot': instance.pivot,
    };
