import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Request model for sending a single question to the terminal.
///
/// Combines a question definition with shared UI [parameters].
///
/// Fields:
/// - [parameters]: Global UI settings for the interaction
///   (button labels, confirmation flow, success message).
/// - [question]: The question to be displayed on the terminal.

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
