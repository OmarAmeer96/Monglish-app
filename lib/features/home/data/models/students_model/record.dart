import 'package:json_annotation/json_annotation.dart';

part 'record.g.dart';

@JsonSerializable()
class Record {
  int? id;
  String? code;
  String? name;
  String? mobile;
  String? email;
  @JsonKey(name: 'zoom_email')
  dynamic zoomEmail;
  String? password;
  @JsonKey(name: 'temp_password')
  dynamic tempPassword;
  dynamic birthdate;
  dynamic gender;
  @JsonKey(name: 'nationality_id')
  dynamic nationalityId;
  @JsonKey(name: 'personal_email')
  dynamic personalEmail;
  dynamic address;
  @JsonKey(name: 'postal_code')
  dynamic postalCode;
  @JsonKey(name: 'country_id')
  dynamic countryId;
  dynamic city;
  dynamic phone;
  @JsonKey(name: 'national_id')
  dynamic nationalId;
  @JsonKey(name: 'student_education')
  dynamic studentEducation;
  @JsonKey(name: 'student_status_type_id')
  int? studentStatusTypeId;
  @JsonKey(name: 'student_remaining_levels')
  int? studentRemainingLevels;
  @JsonKey(name: 'student_package_id')
  int? studentPackageId;
  @JsonKey(name: 'student_package_start_at')
  String? studentPackageStartAt;
  @JsonKey(name: 'reporting_id')
  dynamic reportingId;
  int? status;
  @JsonKey(name: 'activation_status')
  int? activationStatus;
  String? notes;
  int? removed;
  @JsonKey(name: 'old_code')
  String? oldCode;
  @JsonKey(name: 'search_text')
  String? searchText;
  @JsonKey(name: 'email_verified_at')
  dynamic emailVerifiedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'level_id')
  int? levelId;
  @JsonKey(name: 'track_id')
  int? trackId;
  @JsonKey(name: 'school_id')
  int? schoolId;
  @JsonKey(name: 'class_id')
  int? classId;
  @JsonKey(name: 'clubs_ids')
  List<int>? clubsIds;
  @JsonKey(name: 'parents_ids')
  List<dynamic>? parentsIds;

  Record({
    this.id,
    this.code,
    this.name,
    this.mobile,
    this.email,
    this.zoomEmail,
    this.password,
    this.tempPassword,
    this.birthdate,
    this.gender,
    this.nationalityId,
    this.personalEmail,
    this.address,
    this.postalCode,
    this.countryId,
    this.city,
    this.phone,
    this.nationalId,
    this.studentEducation,
    this.studentStatusTypeId,
    this.studentRemainingLevels,
    this.studentPackageId,
    this.studentPackageStartAt,
    this.reportingId,
    this.status,
    this.activationStatus,
    this.notes,
    this.removed,
    this.oldCode,
    this.searchText,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.levelId,
    this.trackId,
    this.schoolId,
    this.classId,
    this.clubsIds,
    this.parentsIds,
  });

  factory Record.fromJson(Map<String, dynamic> json) {
    return _$RecordFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RecordToJson(this);
}
