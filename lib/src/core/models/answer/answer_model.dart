import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
abstract class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    required int id,
    required String value,
    required String displayValue,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) {
    return _$AnswerModelFromJson({
      ...json,
      'displayValue': json['displayValue'] ?? json['value'],
    });
  }
}
