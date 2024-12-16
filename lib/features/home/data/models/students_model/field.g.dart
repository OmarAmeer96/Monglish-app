// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'],
      parentId: (json['parent_id'] as num?)?.toInt(),
      nextId: (json['next_id'] as num?)?.toInt(),
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
      root: json['root'] == null
          ? null
          : Root.fromJson(json['root'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldToJson(Field instance) => <String, dynamic>{
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
      'root': instance.root,
    };
