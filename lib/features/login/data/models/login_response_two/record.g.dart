// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Record _$RecordFromJson(Map<String, dynamic> json) => Record(
      id: (json['id'] as num?)?.toInt(),
      code: json['code'] as String?,
      name: json['name'] as String?,
      mobile: json['mobile'] as String?,
      email: json['email'] as String?,
      zoomEmail: json['zoom_email'],
      password: json['password'] as String?,
      tempPassword: json['temp_password'],
      birthdate: json['birthdate'],
      gender: json['gender'],
      nationalityId: json['nationality_id'],
      personalEmail: json['personal_email'],
      address: json['address'],
      postalCode: json['postal_code'],
      countryId: json['country_id'],
      city: json['city'],
      phone: json['phone'],
      nationalId: json['national_id'],
      studentEducation: json['student_education'],
      studentStatusTypeId: (json['student_status_type_id'] as num?)?.toInt(),
      studentRemainingLevels:
          (json['student_remaining_levels'] as num?)?.toInt(),
      studentPackageId: (json['student_package_id'] as num?)?.toInt(),
      studentPackageStartAt: json['student_package_start_at'] as String?,
      reportingId: json['reporting_id'],
      status: (json['status'] as num?)?.toInt(),
      activationStatus: (json['activation_status'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      removed: (json['removed'] as num?)?.toInt(),
      oldCode: json['old_code'] as String?,
      searchText: json['search_text'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$RecordToJson(Record instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'mobile': instance.mobile,
      'email': instance.email,
      'zoom_email': instance.zoomEmail,
      'password': instance.password,
      'temp_password': instance.tempPassword,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'nationality_id': instance.nationalityId,
      'personal_email': instance.personalEmail,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'country_id': instance.countryId,
      'city': instance.city,
      'phone': instance.phone,
      'national_id': instance.nationalId,
      'student_education': instance.studentEducation,
      'student_status_type_id': instance.studentStatusTypeId,
      'student_remaining_levels': instance.studentRemainingLevels,
      'student_package_id': instance.studentPackageId,
      'student_package_start_at': instance.studentPackageStartAt,
      'reporting_id': instance.reportingId,
      'status': instance.status,
      'activation_status': instance.activationStatus,
      'notes': instance.notes,
      'removed': instance.removed,
      'old_code': instance.oldCode,
      'search_text': instance.searchText,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'roles': instance.roles,
    };
