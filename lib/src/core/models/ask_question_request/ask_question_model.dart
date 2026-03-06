import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

///  model responsible for configuring a question flow on the terminal.
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

part 'ask_question_model.freezed.dart';
part 'ask_question_model.g.dart';

@freezed
abstract class AskQuestionModel with _$AskQuestionModel {
  const factory AskQuestionModel({
    @Default(0) int id,
    String? question,
    @Default(TefIPQuestionType.text) TefIPQuestionType type,
    @Default(false) bool required,
    @Default(0) int minLength,
    @Default(255) int maxLength,
    String? defaultValue,
    String? mask,
    String? regex,
    String? errorMessage,
    List<AskOptionModel>? options,
  }) = _AskQuestionModel;

  factory AskQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$AskQuestionModelFromJson(json);
}
