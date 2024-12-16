import 'package:json_annotation/json_annotation.dart';

part 'education_type.g.dart';

@JsonSerializable()
class EducationType {
  int? id;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;

  EducationType({this.id, this.name, this.nameLocal});

  factory EducationType.fromJson(Map<String, dynamic> json) {
    return _$EducationTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EducationTypeToJson(this);
}
