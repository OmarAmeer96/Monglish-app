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
      mobile: json['mobile'] as String?,
      gender: json['gender'],
      age: (json['age'] as num?)?.toInt(),
      package: json['package'] == null
          ? null
          : Package.fromJson(json['package'] as Map<String, dynamic>),
      packageStartAt: json['package_start_at'] == null
          ? null
          : DateTime.parse(json['package_start_at'] as String),
      packageExpireAt: json['package_expire_at'] == null
          ? null
          : DateTime.parse(json['package_expire_at'] as String),
      isPackageExpired: json['is_package_expired'] as bool?,
      nationality: json['nationality'],
      statusType: json['status_type'] == null
          ? null
          : StatusType.fromJson(json['status_type'] as Map<String, dynamic>),
      roles: json['roles'] as List<dynamic>?,
      level: json['level'] == null
          ? null
          : Level.fromJson(json['level'] as Map<String, dynamic>),
      track: json['track'] == null
          ? null
          : Track.fromJson(json['track'] as Map<String, dynamic>),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
      studentEducation: json['student_education'],
      parents: json['parents'] as List<dynamic>?,
      remainingLevels: (json['remaining_levels'] as num?)?.toInt(),
      removed: (json['removed'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      dataClass: json['class'] == null
          ? null
          : Class.fromJson(json['class'] as Map<String, dynamic>),
      record: json['record'] == null
          ? null
          : Record.fromJson(json['record'] as Map<String, dynamic>),
      phone: json['phone'],
      country: json['country'],
      birthdate: json['birthdate'],
      city: json['city'],
      address: json['address'],
      postalCode: json['postal_code'],
      clubs: (json['clubs'] as List<dynamic>?)
          ?.map((e) => Club.fromJson(e as Map<String, dynamic>))
          .toList(),
      assessments: json['assessments'] as List<dynamic>?,
      submitted: json['submitted'] as List<dynamic>?,
      score: (json['score'] as num?)?.toInt(),
      points: (json['points'] as num?)?.toInt(),
      admissionStatus: json['admissionStatus'],
      packageClubs: (json['package_clubs'] as List<dynamic>?)
          ?.map((e) => PackageClub.fromJson(e as Map<String, dynamic>))
          .toList(),
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      'mobile': instance.mobile,
      'gender': instance.gender,
      'age': instance.age,
      'package': instance.package,
      'package_start_at': instance.packageStartAt?.toIso8601String(),
      'package_expire_at': instance.packageExpireAt?.toIso8601String(),
      'is_package_expired': instance.isPackageExpired,
      'nationality': instance.nationality,
      'status_type': instance.statusType,
      'roles': instance.roles,
      'level': instance.level,
      'track': instance.track,
      'school': instance.school,
      'student_education': instance.studentEducation,
      'parents': instance.parents,
      'remaining_levels': instance.remainingLevels,
      'removed': instance.removed,
      'notes': instance.notes,
      'class': instance.dataClass,
      'record': instance.record,
      'phone': instance.phone,
      'country': instance.country,
      'birthdate': instance.birthdate,
      'city': instance.city,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'clubs': instance.clubs,
      'assessments': instance.assessments,
      'submitted': instance.submitted,
      'score': instance.score,
      'points': instance.points,
      'admissionStatus': instance.admissionStatus,
      'package_clubs': instance.packageClubs,
      'activities': instance.activities,
      'lookups': instance.lookups,
    };
