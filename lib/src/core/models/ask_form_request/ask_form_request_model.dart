import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Request model for sending a multi-question form to the terminal.
///
/// Groups a set of [questions] with shared [parameters] that control
/// the overall UI behavior of the interaction.
///
/// Fields:
/// - [parameters]: Global UI settings shared across all questions
///   (button labels, confirmation flow, success message).
/// - [questions]: Ordered list of questions to be presented to the user.

part 'ask_form_request_model.freezed.dart';
part 'ask_form_request_model.g.dart';

@freezed
abstract class AskFormRequestModel with _$AskFormRequestModel {
  const factory AskFormRequestModel({
    required AskParametersModel parameters,
    required List<AskQuestionModel> questions,
  }) = _AskFormRequestModel;

  factory AskFormRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AskFormRequestModelFromJson(json);
}
