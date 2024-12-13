import 'package:json_annotation/json_annotation.dart';

import 'pivot.dart';

part 'role.g.dart';

@JsonSerializable()
class Role {
  int? id;
  String? name;
  Pivot? pivot;

  Role({this.id, this.name, this.pivot});

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  Map<String, dynamic> toJson() => _$RoleToJson(this);
}
