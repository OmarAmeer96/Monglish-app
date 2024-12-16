// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusType _$StatusTypeFromJson(Map<String, dynamic> json) => StatusType(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
    );

Map<String, dynamic> _$StatusTypeToJson(StatusType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_local': instance.nameLocal,
    };
