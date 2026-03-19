import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

/// Model representing a single answer submitted by the user.
///
/// Returned by the Ask endpoint after the user responds to a question.
///
/// Fields:
/// - [id]: Identifier of the question this answer belongs to.
/// - [value]: Raw submitted value (e.g., `"123.456.789-00"`).
/// - [displayValue]: Human-readable value for display purposes.
///   Falls back to [value] if the terminal provides no separate display value.
@freezed
abstract class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    required int id,
    required String value,
    @JsonKey(readValue: _readDisplayValue) required String displayValue,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}

Object? _readDisplayValue(Map<dynamic, dynamic> json, String key) {
  return json['displayValue'] ?? json['value'];
}
