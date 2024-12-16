import 'package:json_annotation/json_annotation.dart';

import 'field.dart';
import 'pivot.dart';

part 'level.g.dart';

@JsonSerializable()
class Level {
  int? id;
  dynamic code;
  @JsonKey(name: 'field_id')
  int? fieldId;
  int? order;
  String? name;
  String? notes;
  int? removed;
  @JsonKey(name: 'search_text')
  String? searchText;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Pivot? pivot;
  Field? field;

  Level({
    this.id,
    this.code,
    this.fieldId,
    this.order,
    this.name,
    this.notes,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.pivot,
    this.field,
  });

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);

  Map<String, dynamic> toJson() => _$LevelToJson(this);
}
