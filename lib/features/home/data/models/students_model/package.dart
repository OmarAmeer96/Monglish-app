import 'package:json_annotation/json_annotation.dart';

part 'package.g.dart';

@JsonSerializable()
class Package {
  int? id;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;
  int? months;
  int? removed;

  Package({this.id, this.name, this.nameLocal, this.months, this.removed});

  factory Package.fromJson(Map<String, dynamic> json) {
    return _$PackageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PackageToJson(this);
}
