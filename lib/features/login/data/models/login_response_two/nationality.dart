import 'package:json_annotation/json_annotation.dart';

part 'nationality.g.dart';

@JsonSerializable()
class Nationality {
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;
  int? id;

  Nationality({this.name, this.nameLocal, this.id});

  factory Nationality.fromJson(Map<String, dynamic> json) {
    return _$NationalityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NationalityToJson(this);
}
