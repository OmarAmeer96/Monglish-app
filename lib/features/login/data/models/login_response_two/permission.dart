import 'package:json_annotation/json_annotation.dart';

part 'permission.g.dart';

@JsonSerializable()
class Permission {
  int? id;
  String? name;

  Permission({this.id, this.name});

  factory Permission.fromJson(Map<String, dynamic> json) {
    return _$PermissionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PermissionToJson(this);
}
