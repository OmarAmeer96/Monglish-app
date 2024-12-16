import 'package:json_annotation/json_annotation.dart';

part 'package_club.g.dart';

@JsonSerializable()
class PackageClub {
  int? id;
  @JsonKey(name: 'package_id')
  int? packageId;
  @JsonKey(name: 'club_type_id')
  int? clubTypeId;
  String? type;
  int? sessions;
  String? notes;
  @JsonKey(name: 'del_club_id')
  int? delClubId;
  int? count;
  String? name;
  @JsonKey(name: 'name_local')
  String? nameLocal;

  PackageClub({
    this.id,
    this.packageId,
    this.clubTypeId,
    this.type,
    this.sessions,
    this.notes,
    this.delClubId,
    this.count,
    this.name,
    this.nameLocal,
  });

  factory PackageClub.fromJson(Map<String, dynamic> json) {
    return _$PackageClubFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PackageClubToJson(this);
}
