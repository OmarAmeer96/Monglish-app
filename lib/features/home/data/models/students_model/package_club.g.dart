// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_club.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PackageClub _$PackageClubFromJson(Map<String, dynamic> json) => PackageClub(
      id: (json['id'] as num?)?.toInt(),
      packageId: (json['package_id'] as num?)?.toInt(),
      clubTypeId: (json['club_type_id'] as num?)?.toInt(),
      type: json['type'] as String?,
      sessions: (json['sessions'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      delClubId: (json['del_club_id'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      name: json['name'] as String?,
      nameLocal: json['name_local'] as String?,
    );

Map<String, dynamic> _$PackageClubToJson(PackageClub instance) =>
    <String, dynamic>{
      'id': instance.id,
      'package_id': instance.packageId,
      'club_type_id': instance.clubTypeId,
      'type': instance.type,
      'sessions': instance.sessions,
      'notes': instance.notes,
      'del_club_id': instance.delClubId,
      'count': instance.count,
      'name': instance.name,
      'name_local': instance.nameLocal,
    };
