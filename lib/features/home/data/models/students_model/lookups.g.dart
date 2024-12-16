// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lookups _$LookupsFromJson(Map<String, dynamic> json) => Lookups(
      genders: (json['genders'] as List<dynamic>?)
          ?.map((e) => Gender.fromJson(e as Map<String, dynamic>))
          .toList(),
      nationalities: (json['nationalities'] as List<dynamic>?)
          ?.map((e) => Nationality.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusTypes: (json['status_types'] as List<dynamic>?)
          ?.map((e) => StatusType.fromJson(e as Map<String, dynamic>))
          .toList(),
      educationTypes: (json['education_types'] as List<dynamic>?)
          ?.map((e) => EducationType.fromJson(e as Map<String, dynamic>))
          .toList(),
      schools: (json['schools'] as List<dynamic>?)
          ?.map((e) => School.fromJson(e as Map<String, dynamic>))
          .toList(),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => Package.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LookupsToJson(Lookups instance) => <String, dynamic>{
      'genders': instance.genders,
      'nationalities': instance.nationalities,
      'countries': instance.countries,
      'status_types': instance.statusTypes,
      'education_types': instance.educationTypes,
      'schools': instance.schools,
      'packages': instance.packages,
    };
