// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      oldCode: json['old_code'] as String?,
      name: json['name'] as String?,
      isEmailActivated: json['is_email_activated'] as bool?,
      isMobileActivated: json['is_mobile_activated'] as bool?,
      shortName: json['short_name'] as String?,
      email: json['email'] as String?,
      zoomEmail: json['zoom_email'],
      mobile: json['mobile'] as String?,
      phone: json['phone'],
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: json['gender'],
      age: json['age'],
      nationality: json['nationality'],
      removed: (json['removed'] as num?)?.toInt(),
      record: json['record'] == null
          ? null
          : Record.fromJson(json['record'] as Map<String, dynamic>),
      birthdate: json['birthdate'],
      country: json['country'],
      permissions: json['permissions'] as List<dynamic>?,
      hasLevels: (json['has_levels'] as num?)?.toInt(),
      lookups: json['lookups'] == null
          ? null
          : Lookups.fromJson(json['lookups'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'old_code': instance.oldCode,
      'name': instance.name,
      'is_email_activated': instance.isEmailActivated,
      'is_mobile_activated': instance.isMobileActivated,
      'short_name': instance.shortName,
      'email': instance.email,
      'zoom_email': instance.zoomEmail,
      'mobile': instance.mobile,
      'phone': instance.phone,
      'roles': instance.roles,
      'gender': instance.gender,
      'age': instance.age,
      'nationality': instance.nationality,
      'removed': instance.removed,
      'record': instance.record,
      'birthdate': instance.birthdate,
      'country': instance.country,
      'permissions': instance.permissions,
      'has_levels': instance.hasLevels,
      'lookups': instance.lookups,
    };
