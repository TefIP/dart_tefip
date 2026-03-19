import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Model representing a single question displayed on the terminal.
///
/// Defines the question prompt, expected input type, validation rules,
/// and the list of selectable options when applicable.
///
/// Fields:
/// - [id]: Identifier of the question within a form flow.
///   Default: `0`.
/// - [question]: Text of the question shown to the user.
///   If `null`, a default prompt is used based on [type].
/// - [type]: Expected input type (e.g., CPF, phone, text, list).
///   Default: [TefIPQuestionType.text].
/// - [`required`]: Whether an answer is mandatory.
///   Default: `false`.
/// - [minLength]: Minimum allowed answer length.
///   Default: `0`.
/// - [maxLength]: Maximum allowed answer length.
///   Default: `255`.
/// - [defaultValue]: Pre-filled value shown in the input field.
/// - [mask]: Input mask pattern applied to the field.
/// - [regex]: Custom validation regex applied to the answer.
/// - [errorMessage]: Message shown when validation fails.
/// - [options]: Selectable options for list/button question types.

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
