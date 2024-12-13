import 'package:json_annotation/json_annotation.dart';

part 'gender.g.dart';

@JsonSerializable()
class Gender {
  int? id;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;

  Gender({this.id, this.name, this.nameLocal});

  factory Gender.fromJson(Map<String, dynamic> json) {
    return _$GenderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GenderToJson(this);
}
