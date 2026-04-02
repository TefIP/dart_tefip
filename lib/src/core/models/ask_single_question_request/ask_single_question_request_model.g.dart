// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_single_question_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AskSingleQuestionModel _$AskSingleQuestionModelFromJson(
        Map<String, dynamic> json) =>
    _AskSingleQuestionModel(
      parameters: AskParametersModel.fromJson(
          json['parameters'] as Map<String, dynamic>),
      question:
          AskQuestionModel.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AskSingleQuestionModelToJson(
        _AskSingleQuestionModel instance) =>
    <String, dynamic>{
      'parameters': instance.parameters.toJson(),
      'question': instance.question.toJson(),
    };
