import 'package:freezed_annotation/freezed_annotation.dart';

/// Model representing an answer option for a question.
///
/// Used in questionnaire or survey flows where each question
/// contains a list of selectable options.
///
/// Fields:
/// - [id]: Unique identifier of the option.
/// - [name]: Display label shown to the user.
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method for serialization.
part 'ask_option_model.freezed.dart';
part 'ask_option_model.g.dart';

@freezed
abstract class AskOptionModel with _$AskOptionModel {
  const factory AskOptionModel({
    required int id,
    required String name,
    String? value,
  }) = _AskOptionModel;

  factory AskOptionModel.fromJson(Map<String, dynamic> json) =>
      _$AskOptionModelFromJson(json);
}
