import 'package:json_annotation/json_annotation.dart';

import 'country.dart';
import 'education_type.dart';
import 'gender.dart';
import 'nationality.dart';
import 'package.dart';
import 'school.dart';
import 'status_type.dart';

part 'lookups.g.dart';

@JsonSerializable()
class Lookups {
  List<Gender>? genders;
  List<Nationality>? nationalities;
  List<Country>? countries;
  @JsonKey(name: 'status_types')
  List<StatusType>? statusTypes;
  @JsonKey(name: 'education_types')
  List<EducationType>? educationTypes;
  List<School>? schools;
  List<Package>? packages;

  Lookups({
    this.genders,
    this.nationalities,
    this.countries,
    this.statusTypes,
    this.educationTypes,
    this.schools,
    this.packages,
  });

  factory Lookups.fromJson(Map<String, dynamic> json) {
    return _$LookupsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LookupsToJson(this);
}
