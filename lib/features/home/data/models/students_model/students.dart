import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'students.g.dart';

@JsonSerializable()
class Students {
  dynamic message;
  String? status;
  Data? data;

  Students({this.message, this.status, this.data});

  factory Students.fromJson(Map<String, dynamic> json) {
    return _$StudentsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StudentsToJson(this);
}
