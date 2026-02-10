// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionResponseModel _$QuestionResponseModelFromJson(
  Map<String, dynamic> json,
) => QuestionResponseModel(
  id: (json['id'] as num).toInt(),
  value: json['value'] as String,
);

Map<String, dynamic> _$QuestionResponseModelToJson(
  QuestionResponseModel instance,
) => <String, dynamic>{'id': instance.id, 'value': instance.value};
