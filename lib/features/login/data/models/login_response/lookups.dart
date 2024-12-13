import 'package:json_annotation/json_annotation.dart';

import 'country.dart';
import 'gender.dart';
import 'nationality.dart';
import 'role.dart';

part 'lookups.g.dart';

@JsonSerializable()
class Lookups {
  List<Role>? roles;
  List<Gender>? genders;
  List<Nationality>? nationalities;
  List<Country>? countries;

  Lookups({this.roles, this.genders, this.nationalities, this.countries});

  factory Lookups.fromJson(Map<String, dynamic> json) {
    return _$LookupsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LookupsToJson(this);
}
