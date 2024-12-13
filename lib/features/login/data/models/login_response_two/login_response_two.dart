import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'permission.dart';
import 'role.dart';

part 'login_response_two.g.dart';

@JsonSerializable()
class LoginResponseTwo {
  Data? data;
  String? token;
  List<Permission>? permissions;
  List<Role>? roles;

  LoginResponseTwo({this.data, this.token, this.permissions, this.roles});

  factory LoginResponseTwo.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseTwoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseTwoToJson(this);
}
