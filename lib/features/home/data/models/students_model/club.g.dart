// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Club _$ClubFromJson(Map<String, dynamic> json) => Club(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
      typeId: (json['type_id'] as num?)?.toInt(),
      schoolId: (json['school_id'] as num?)?.toInt(),
      attendeesCountLimit: (json['attendees_count_limit'] as num?)?.toInt(),
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

Map<String, dynamic> _$ClubToJson(Club instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'name_local': instance.nameLocal,
      'type_id': instance.typeId,
      'school_id': instance.schoolId,
      'attendees_count_limit': instance.attendeesCountLimit,
      'removed': instance.removed,
      'search_text': instance.searchText,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pivot': instance.pivot,
    };
