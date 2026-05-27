// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InfoModel _$InfoModelFromJson(Map<String, dynamic> json) => _InfoModel(
  appName: json['appName'] as String,
  version: json['version'] as String,
  build: json['build'] as String,
  platform: json['platform'] as String,
  locale: json['locale'] as String,
  timeZone: json['timeZone'] as String,
  mode: json['mode'] as String,
  isActive: json['isActive'] as bool,
  isBusy: json['isBusy'] as bool,
);

Map<String, dynamic> _$InfoModelToJson(_InfoModel instance) =>
    <String, dynamic>{
      'appName': instance.appName,
      'version': instance.version,
      'build': instance.build,
      'platform': instance.platform,
      'locale': instance.locale,
      'timeZone': instance.timeZone,
      'mode': instance.mode,
      'isActive': instance.isActive,
      'isBusy': instance.isBusy,
    };
