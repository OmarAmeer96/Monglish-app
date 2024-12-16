// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationType _$EducationTypeFromJson(Map<String, dynamic> json) =>
    EducationType(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
    );

Map<String, dynamic> _$EducationTypeToJson(EducationType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_local': instance.nameLocal,
    };
