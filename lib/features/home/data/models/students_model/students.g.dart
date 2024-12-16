// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Students _$StudentsFromJson(Map<String, dynamic> json) => Students(
      message: json['message'],
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StudentsToJson(Students instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'data': instance.data,
    };
