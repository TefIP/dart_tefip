import 'package:json_annotation/json_annotation.dart';

part 'question_response_model.g.dart';

@JsonSerializable()
class QuestionResponseModel {
  final int id;
  final String value;

  QuestionResponseModel({
    required this.id,
    required this.value,
  });

  factory QuestionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionResponseModelToJson(this);
}
