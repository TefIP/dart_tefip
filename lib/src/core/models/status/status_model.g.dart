// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusModel _$StatusModelFromJson(Map<String, dynamic> json) => _StatusModel(
  status: json['status'] as String,
  uptimeSeconds: (json['uptimeSeconds'] as num).toInt(),
  startedAt: json['startedAt'] as String,
);

Map<String, dynamic> _$StatusModelToJson(_StatusModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'uptimeSeconds': instance.uptimeSeconds,
      'startedAt': instance.startedAt,
    };
