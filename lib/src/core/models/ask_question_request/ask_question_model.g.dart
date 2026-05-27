// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ask_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AskQuestionModel _$AskQuestionModelFromJson(Map<String, dynamic> json) =>
    _AskQuestionModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      question: json['question'] as String?,
      type:
          $enumDecodeNullable(_$TefIPQuestionTypeEnumMap, json['type']) ??
          TefIPQuestionType.text,
      required: json['required'] as bool? ?? false,
      minLength: (json['minLength'] as num?)?.toInt() ?? 0,
      maxLength: (json['maxLength'] as num?)?.toInt() ?? 255,
      defaultValue: json['defaultValue'] as String?,
      mask: json['mask'] as String?,
      regex: json['regex'] as String?,
      errorMessage: json['errorMessage'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => AskOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AskQuestionModelToJson(_AskQuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'type': _$TefIPQuestionTypeEnumMap[instance.type]!,
      'required': instance.required,
      'minLength': instance.minLength,
      'maxLength': instance.maxLength,
      'defaultValue': instance.defaultValue,
      'mask': instance.mask,
      'regex': instance.regex,
      'errorMessage': instance.errorMessage,
      'options': instance.options?.map((e) => e.toJson()).toList(),
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
