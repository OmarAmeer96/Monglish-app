// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'name_local': instance.nameLocal,
      'id': instance.id,
    };
