import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

part 'ask_single_question_request_model.freezed.dart';
part 'ask_single_question_request_model.g.dart';

@freezed
abstract class AskSingleQuestionRequestModel
    with _$AskSingleQuestionRequestModel {
  const factory AskSingleQuestionRequestModel({
    required AskParametersModel parameters,
    required AskQuestionModel question,
  }) = _AskSingleQuestionModel;

  factory AskSingleQuestionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AskSingleQuestionModelFromJson(json);
}
