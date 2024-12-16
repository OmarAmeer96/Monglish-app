import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;
  int? id;

  Country({this.name, this.nameLocal, this.id});

  factory Country.fromJson(Map<String, dynamic> json) {
    return _$CountryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CountryToJson(this);
}
