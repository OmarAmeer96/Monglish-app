import 'package:json_annotation/json_annotation.dart';

import 'lookups.dart';
import 'record.dart';
import 'role.dart';

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
  @JsonKey(name: 'zoom_email')
  dynamic zoomEmail;
  String? mobile;
  dynamic phone;
  List<Role>? roles;
  dynamic gender;
  dynamic age;
  dynamic nationality;
  int? removed;
  Record? record;
  dynamic birthdate;
  dynamic country;
  List<dynamic>? permissions;
  @JsonKey(name: 'has_levels')
  int? hasLevels;
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
    this.zoomEmail,
    this.mobile,
    this.phone,
    this.roles,
    this.gender,
    this.age,
    this.nationality,
    this.removed,
    this.record,
    this.birthdate,
    this.country,
    this.permissions,
    this.hasLevels,
    this.lookups,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
