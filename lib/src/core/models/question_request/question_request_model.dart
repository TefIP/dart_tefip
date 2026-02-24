import 'package:dart_tefip/src/core/enums/tef_ip_question_type.dart';
import 'package:json_annotation/json_annotation.dart';
import '../question_option/question_option_model.dart';

part 'question_request_model.g.dart';

@JsonSerializable()
/// Request model responsible for configuring a question flow on the terminal.
///
/// This model defines how the question should be rendered,
/// which validation rules apply, and how the interaction behaves.
///
/// Fields:
/// - [type]: Question type that defines expected input format
///   (e.g., CPF, CNPJ, phone, email).
/// - [question]: Custom question text.
///   If not provided, a default message is generated based on [type].
/// - [buttonText]: Label for the confirmation button.
/// - [showCancelButton]: Whether a cancel button should be displayed.
/// - [buttonCancelText]: Label for the cancel button.
/// - [showSuccessMessage]: Whether a success message should be shown after confirmation.
/// - [successMessage]: Custom success message text.
/// - [successMessageInterval]: Duration (ms) the success message remains visible.
/// - [confirmAnswer]: Whether the user must confirm the entered answer.
/// - [options]: List of selectable options (used for multiple-choice types).
/// - [regex]: Custom validation pattern applied to the input.
///
/// Behavior:
/// - If [question] is not explicitly provided,
///   a default message is resolved using [_getDefaultQuestion].
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method for serialization.
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

  /// Returns the custom question text or a default value based on [type].
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

  factory QuestionRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$QuestionRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionRequestModelToJson(this);
}
