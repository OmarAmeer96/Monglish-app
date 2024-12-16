// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Level _$LevelFromJson(Map<String, dynamic> json) => Level(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'],
      fieldId: (json['field_id'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      name: json['name'] as String?,
      notes: json['notes'] as String?,
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
      field: json['field'] == null
          ? null
          : Field.fromJson(json['field'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LevelToJson(Level instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'field_id': instance.fieldId,
      'order': instance.order,
      'name': instance.name,
      'notes': instance.notes,
      'removed': instance.removed,
      'search_text': instance.searchText,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pivot': instance.pivot,
      'field': instance.field,
    };
