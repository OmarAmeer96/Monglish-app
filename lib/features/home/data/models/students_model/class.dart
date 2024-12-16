import 'package:json_annotation/json_annotation.dart';

import 'pivot.dart';

part 'class.g.dart';

@JsonSerializable()
class Class {
  int? id;
  dynamic code;
  String? name;
  @JsonKey(name: 'start_date')
  String? startDate;
  @JsonKey(name: 'end_date')
  String? endDate;
  @JsonKey(name: 'level_id')
  int? levelId;
  @JsonKey(name: 'supervisor_id')
  dynamic supervisorId;
  @JsonKey(name: 'teacher_id')
  dynamic teacherId;
  @JsonKey(name: 'co_teacher_id')
  dynamic coTeacherId;
  int? removed;
  @JsonKey(name: 'search_text')
  String? searchText;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Pivot? pivot;

  Class({
    this.id,
    this.code,
    this.name,
    this.startDate,
    this.endDate,
    this.levelId,
    this.supervisorId,
    this.teacherId,
    this.coTeacherId,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

  Map<String, dynamic> toJson() => _$ClassToJson(this);
}
