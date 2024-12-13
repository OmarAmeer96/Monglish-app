// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseTwo _$LoginResponseTwoFromJson(Map<String, dynamic> json) =>
    LoginResponseTwo(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      token: json['token'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => Permission.fromJson(e as Map<String, dynamic>))
          .toList(),
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoginResponseTwoToJson(LoginResponseTwo instance) =>
    <String, dynamic>{
      'data': instance.data,
      'token': instance.token,
      'permissions': instance.permissions,
      'roles': instance.roles,
    };
