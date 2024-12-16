import 'package:json_annotation/json_annotation.dart';

import 'pivot.dart';

part 'club.g.dart';

@JsonSerializable()
class Club {
  int? id;
  String? code;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;
  @JsonKey(name: 'type_id')
  int? typeId;
  @JsonKey(name: 'school_id')
  int? schoolId;
  @JsonKey(name: 'attendees_count_limit')
  int? attendeesCountLimit;
  int? removed;
  @JsonKey(name: 'search_text')
  String? searchText;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Pivot? pivot;

  Club({
    this.id,
    this.code,
    this.name,
    this.nameLocal,
    this.typeId,
    this.schoolId,
    this.attendeesCountLimit,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);

  Map<String, dynamic> toJson() => _$ClubToJson(this);
}
