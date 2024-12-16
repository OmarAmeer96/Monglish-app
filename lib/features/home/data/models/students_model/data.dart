import 'package:json_annotation/json_annotation.dart';

import 'activity.dart';
import 'class.dart';
import 'club.dart';
import 'level.dart';
import 'lookups.dart';
import 'package.dart';
import 'package_club.dart';
import 'record.dart';
import 'school.dart';
import 'status_type.dart';
import 'track.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  String? code;
  @JsonKey(name: 'old_code')
  String? oldCode;
  String? name;
  @JsonKey(name: 'is_email_activated')
  bool? isEmailActivated;
  @JsonKey(name: 'is_mobile_activated')
  bool? isMobileActivated;
  @JsonKey(name: 'short_name')
  String? shortName;
  String? email;
  String? mobile;
  dynamic gender;
  int? age;
  Package? package;
  @JsonKey(name: 'package_start_at')
  DateTime? packageStartAt;
  @JsonKey(name: 'package_expire_at')
  DateTime? packageExpireAt;
  @JsonKey(name: 'is_package_expired')
  bool? isPackageExpired;
  dynamic nationality;
  @JsonKey(name: 'status_type')
  StatusType? statusType;
  List<dynamic>? roles;
  Level? level;
  Track? track;
  School? school;
  @JsonKey(name: 'student_education')
  dynamic studentEducation;
  List<dynamic>? parents;
  @JsonKey(name: 'remaining_levels')
  int? remainingLevels;
  int? removed;
  String? notes;
  @JsonKey(name: 'class')
  Class? dataClass;
  Record? record;
  dynamic phone;
  dynamic country;
  dynamic birthdate;
  dynamic city;
  dynamic address;
  @JsonKey(name: 'postal_code')
  dynamic postalCode;
  List<Club>? clubs;
  List<dynamic>? assessments;
  List<dynamic>? submitted;
  int? score;
  int? points;
  dynamic admissionStatus;
  @JsonKey(name: 'package_clubs')
  List<PackageClub>? packageClubs;
  List<Activity>? activities;
  Lookups? lookups;

  Data({
    this.id,
    this.code,
    this.oldCode,
    this.name,
    this.isEmailActivated,
    this.isMobileActivated,
    this.shortName,
    this.email,
    this.mobile,
    this.gender,
    this.age,
    this.package,
    this.packageStartAt,
    this.packageExpireAt,
    this.isPackageExpired,
    this.nationality,
    this.statusType,
    this.roles,
    this.level,
    this.track,
    this.school,
    this.studentEducation,
    this.parents,
    this.remainingLevels,
    this.removed,
    this.notes,
    this.dataClass,
    this.record,
    this.phone,
    this.country,
    this.birthdate,
    this.city,
    this.address,
    this.postalCode,
    this.clubs,
    this.assessments,
    this.submitted,
    this.score,
    this.points,
    this.admissionStatus,
    this.packageClubs,
    this.activities,
    this.lookups,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
