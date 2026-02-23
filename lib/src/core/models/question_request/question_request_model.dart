import 'package:dart_tefip/src/core/enums/tef_ip_question_type.dart';
import 'package:json_annotation/json_annotation.dart';
import '../question_option/question_option_model.dart';

part 'question_request_model.g.dart';

@JsonSerializable()
class QuestionRequestModel {
  final TefIPQuestionType type;
  final String? _question;
  final String? buttonText;
  final bool? showCancelButton;
  final String? buttonCancelText;
  final bool? showSuccessMessage;
  final String? successMessage;
  final int? successMessageInterval;
  final bool? confirmAnswer;
  final List<QuestionOptionModel>? options;
  final String? regex;

  QuestionRequestModel({
    required this.type,
    String? question,
    this.buttonText,
    this.showCancelButton,
    this.buttonCancelText,
    this.showSuccessMessage,
    this.successMessage,
    this.successMessageInterval,
    this.confirmAnswer,
    this.options,
    this.regex,
  }) : _question = question;

  String get question => _question ?? _getDefaultQuestion(type);

  static String _getDefaultQuestion(TefIPQuestionType type) {
    switch (type) {
      case TefIPQuestionType.phone:
        return 'Informe o telefone';
      case TefIPQuestionType.cpf:
        return 'Informe o CPF';
      case TefIPQuestionType.cnpj:
        return 'Informe o CNPJ';
      case TefIPQuestionType.cpfOrcnpj:
        return 'Informe o CPF ou CNPJ';
      case TefIPQuestionType.email:
        return 'Informe o e-mail';
      case TefIPQuestionType.cep:
        return 'Informe o CEP';
      default:
        return '';
    }
  }

  factory QuestionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionRequestModelToJson(this);
}
