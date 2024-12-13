// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nationality.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nationality _$NationalityFromJson(Map<String, dynamic> json) => Nationality(
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NationalityToJson(Nationality instance) =>
    <String, dynamic>{
      'name': instance.name,
      'name_local': instance.nameLocal,
      'id': instance.id,
    };
