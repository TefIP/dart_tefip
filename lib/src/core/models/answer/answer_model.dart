import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

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
