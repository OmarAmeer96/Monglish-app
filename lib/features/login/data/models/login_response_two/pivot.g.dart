// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pivot _$PivotFromJson(Map<String, dynamic> json) => Pivot(
      modelType: json['model_type'] as String?,
      modelId: (json['model_id'] as num?)?.toInt(),
      roleId: (json['role_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PivotToJson(Pivot instance) => <String, dynamic>{
      'model_type': instance.modelType,
      'model_id': instance.modelId,
      'role_id': instance.roleId,
    };
