// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LogModel _$LogModelFromJson(Map<String, dynamic> json) => _LogModel(
      id: (json['id'] as num).toInt(),
      level: $enumDecode(_$TefIPLogLevelEnumMap, json['level']),
      source: $enumDecode(_$TefIPLogSourceEnumMap, json['source']),
      message: json['message'] as String,
      details: json['details'] as String?,
      createdAt: const TefIPUnixDateTimeConverter()
          .fromJson((json['createdAt'] as num?)?.toInt()),
    );

Map<String, dynamic> _$LogModelToJson(_LogModel instance) => <String, dynamic>{
      'id': instance.id,
      'level': _$TefIPLogLevelEnumMap[instance.level]!,
      'source': _$TefIPLogSourceEnumMap[instance.source]!,
      'message': instance.message,
      'details': instance.details,
      'createdAt':
          const TefIPUnixDateTimeConverter().toJson(instance.createdAt),
    };

const _$TefIPLogLevelEnumMap = {
  TefIPLogLevel.fatal: 'fatal',
  TefIPLogLevel.error: 'error',
  TefIPLogLevel.warning: 'warning',
  TefIPLogLevel.info: 'info',
  TefIPLogLevel.trace: 'trace',
  TefIPLogLevel.path: 'path',
  TefIPLogLevel.debug: 'debug',
};

const _$TefIPLogSourceEnumMap = {
  TefIPLogSource.app: 'app',
  TefIPLogSource.router: 'router',
  TefIPLogSource.http: 'http',
};
