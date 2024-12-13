// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookups.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lookups _$LookupsFromJson(Map<String, dynamic> json) => Lookups(
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
      genders: (json['genders'] as List<dynamic>?)
          ?.map((e) => Gender.fromJson(e as Map<String, dynamic>))
          .toList(),
      nationalities: (json['nationalities'] as List<dynamic>?)
          ?.map((e) => Nationality.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => Country.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LookupsToJson(Lookups instance) => <String, dynamic>{
      'roles': instance.roles,
      'genders': instance.genders,
      'nationalities': instance.nationalities,
      'countries': instance.countries,
    };
