import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_response_model.freezed.dart';
part 'question_response_model.g.dart';

@freezed
abstract class QuestionResponseModel with _$QuestionResponseModel {
  const factory QuestionResponseModel({
    required int id,
    required String value,
  }) = _QuestionResponseModel;

  factory QuestionResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$QuestionResponseModelFromJson(json);
}
