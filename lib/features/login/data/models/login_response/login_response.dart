import 'package:json_annotation/json_annotation.dart';

import 'data.dart';
import 'permission.dart';
import 'role.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  Data? data;
  String? token;
  List<Permission>? permissions;
  List<Role>? roles;

  LoginResponse({this.data, this.token, this.permissions, this.roles});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
