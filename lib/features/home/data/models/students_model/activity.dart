import 'package:json_annotation/json_annotation.dart';

part 'activity.g.dart';

@JsonSerializable()
class Activity {
  String? name;
  String? date;

  Activity({this.name, this.date});

  factory Activity.fromJson(Map<String, dynamic> json) {
    return _$ActivityFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}
