// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Package _$PackageFromJson(Map<String, dynamic> json) => Package(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
      months: (json['months'] as num?)?.toInt(),
      removed: (json['removed'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PackageToJson(Package instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_local': instance.nameLocal,
      'months': instance.months,
      'removed': instance.removed,
    };
