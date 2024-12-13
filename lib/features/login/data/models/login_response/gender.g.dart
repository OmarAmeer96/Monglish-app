// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gender _$GenderFromJson(Map<String, dynamic> json) => Gender(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
    );

Map<String, dynamic> _$GenderToJson(Gender instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_local': instance.nameLocal,
    };
