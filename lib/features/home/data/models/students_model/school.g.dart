// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'school.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

School _$SchoolFromJson(Map<String, dynamic> json) => School(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      parentId: json['parent_id'],
      nextId: json['next_id'],
      order: (json['order'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
      rootId: (json['root_id'] as num?)?.toInt(),
      parentsIds: json['parents_ids'] as String?,
      type: (json['type'] as num?)?.toInt(),
      removed: (json['removed'] as num?)?.toInt(),
      searchText: json['search_text'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SchoolToJson(School instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'parent_id': instance.parentId,
      'next_id': instance.nextId,
      'order': instance.order,
      'name': instance.name,
      'name_local': instance.nameLocal,
      'root_id': instance.rootId,
      'parents_ids': instance.parentsIds,
      'type': instance.type,
      'removed': instance.removed,
      'search_text': instance.searchText,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
