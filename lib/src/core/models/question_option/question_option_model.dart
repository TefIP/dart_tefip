import 'package:json_annotation/json_annotation.dart';

part 'question_option_model.g.dart';

@JsonSerializable()
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
class QuestionOptionModel {
  final int id;
  final String name;

  QuestionOptionModel({
    required this.id,
    required this.name,
  });

  factory QuestionOptionModel.fromJson(
    Map<String, dynamic> json,
  ) => _$QuestionOptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionOptionModelToJson(this);
}
