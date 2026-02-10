// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionRequestModel _$QuestionRequestModelFromJson(
  Map<String, dynamic> json,
) => QuestionRequestModel(
  type: $enumDecode(_$TefIPQuestionTypeEnumMap, json['type']),
  question: json['question'] as String?,
  buttonText: json['buttonText'] as String?,
  showCancelButton: json['showCancelButton'] as bool?,
  buttonCancelText: json['buttonCancelText'] as String?,
  showSuccessMessage: json['showSuccessMessage'] as bool?,
  successMessage: json['successMessage'] as String?,
  successMessageInterval: (json['successMessageInterval'] as num?)?.toInt(),
  confirmAnswer: json['confirmAnswer'] as bool?,
  options: (json['options'] as List<dynamic>?)
      ?.map((e) => QuestionOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  regex: json['regex'] as String?,
);

Map<String, dynamic> _$QuestionRequestModelToJson(
  QuestionRequestModel instance,
) => <String, dynamic>{
  'type': _$TefIPQuestionTypeEnumMap[instance.type]!,
  'buttonText': instance.buttonText,
  'showCancelButton': instance.showCancelButton,
  'buttonCancelText': instance.buttonCancelText,
  'showSuccessMessage': instance.showSuccessMessage,
  'successMessage': instance.successMessage,
  'successMessageInterval': instance.successMessageInterval,
  'confirmAnswer': instance.confirmAnswer,
  'options': instance.options?.map((e) => e.toJson()).toList(),
  'regex': instance.regex,
  'question': instance.question,
};

const _$TefIPQuestionTypeEnumMap = {
  TefIPQuestionType.list: 'LIST',
  TefIPQuestionType.button: 'BUTTON',
  TefIPQuestionType.text: 'TEXT',
  TefIPQuestionType.phone: 'PHONE',
  TefIPQuestionType.number: 'NUMBER',
  TefIPQuestionType.cpf: 'CPF',
  TefIPQuestionType.cnpj: 'CNPJ',
  TefIPQuestionType.cpfOrcnpj: 'CPFORCNPJ',
  TefIPQuestionType.email: 'EMAIL',
  TefIPQuestionType.cep: 'CEP',
  TefIPQuestionType.date: 'DATE',
  TefIPQuestionType.time: 'TIME',
  TefIPQuestionType.money: 'MONEY',
  TefIPQuestionType.regex: 'REGEX',
};
