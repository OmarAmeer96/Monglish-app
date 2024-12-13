import 'package:json_annotation/json_annotation.dart';

part 'pivot.g.dart';

@JsonSerializable()
class Pivot {
  @JsonKey(name: 'model_type')
  String? modelType;
  @JsonKey(name: 'model_id')
  int? modelId;
  @JsonKey(name: 'role_id')
  int? roleId;

  Pivot({this.modelType, this.modelId, this.roleId});

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);
}
