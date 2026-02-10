// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionOptionModel _$QuestionOptionModelFromJson(Map<String, dynamic> json) =>
    QuestionOptionModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$QuestionOptionModelToJson(
  QuestionOptionModel instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};
