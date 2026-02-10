import 'package:json_annotation/json_annotation.dart';

part 'question_option_model.g.dart';

@JsonSerializable()
class QuestionOptionModel {
  final int id;
  final String name;

  QuestionOptionModel({
    required this.id,
    required this.name,
  });

  factory QuestionOptionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionOptionModelToJson(this);
}
