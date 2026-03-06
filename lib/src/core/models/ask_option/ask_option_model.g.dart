// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AskOptionModel _$AskOptionModelFromJson(Map<String, dynamic> json) =>
    _AskOptionModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$AskOptionModelToJson(_AskOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };
