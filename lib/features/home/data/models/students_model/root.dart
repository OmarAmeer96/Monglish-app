import 'package:json_annotation/json_annotation.dart';

part 'root.g.dart';

@JsonSerializable()
class Root {
  int? id;
  String? code;
  @JsonKey(name: 'parent_id')
  dynamic parentId;
  @JsonKey(name: 'next_id')
  dynamic nextId;
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

  Root({
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
  });

  factory Root.fromJson(Map<String, dynamic> json) => _$RootFromJson(json);

  Map<String, dynamic> toJson() => _$RootToJson(this);
}
