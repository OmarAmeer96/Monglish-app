import 'package:json_annotation/json_annotation.dart';

import 'root.dart';

part 'track.g.dart';

@JsonSerializable()
class Track {
  int? id;
  dynamic code;
  @JsonKey(name: 'parent_id')
  int? parentId;
  @JsonKey(name: 'next_id')
  int? nextId;
  int? order;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;
  @JsonKey(name: 'root_id')
  int? rootId;
  @JsonKey(name: 'parents_ids')
  String? parentsIds;
  int? type;
  int? removed;
  @JsonKey(name: 'search_text')
  String? searchText;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  Root? root;

  Track({
    this.id,
    this.code,
    this.parentId,
    this.nextId,
    this.order,
    this.name,
    this.nameLocal,
    this.rootId,
    this.parentsIds,
    this.type,
    this.removed,
    this.searchText,
    this.createdAt,
    this.updatedAt,
    this.root,
  });

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);

  Map<String, dynamic> toJson() => _$TrackToJson(this);
}
