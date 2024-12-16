import 'package:json_annotation/json_annotation.dart';

part 'status_type.g.dart';

@JsonSerializable()
class StatusType {
  int? id;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;

  StatusType({this.id, this.name, this.nameLocal});

  factory StatusType.fromJson(Map<String, dynamic> json) {
    return _$StatusTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StatusTypeToJson(this);
}
