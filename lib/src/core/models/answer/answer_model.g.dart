// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) => _AnswerModel(
  id: (json['id'] as num).toInt(),
  value: json['value'] as String,
  displayValue: _readDisplayValue(json, 'displayValue') as String,
);

Map<String, dynamic> _$AnswerModelToJson(_AnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'displayValue': instance.displayValue,
    };
