// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_form_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AskFormRequestModel _$AskFormRequestModelFromJson(Map<String, dynamic> json) =>
    _AskFormRequestModel(
      parameters: AskParametersModel.fromJson(
        json['parameters'] as Map<String, dynamic>,
      ),
      questions: (json['questions'] as List<dynamic>)
          .map((e) => AskQuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AskFormRequestModelToJson(
  _AskFormRequestModel instance,
) => <String, dynamic>{
  'parameters': instance.parameters.toJson(),
  'questions': instance.questions.map((e) => e.toJson()).toList(),
};
