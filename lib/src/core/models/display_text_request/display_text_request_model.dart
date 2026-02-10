import 'package:freezed_annotation/freezed_annotation.dart';

part 'display_text_request_model.freezed.dart';
part 'display_text_request_model.g.dart';

@freezed
abstract class DisplayTextRequestModel with _$DisplayTextRequestModel {
  const factory DisplayTextRequestModel({
    required List<dynamic> content,
    required String backgroundColor,
    bool? showCloseButton,
  }) = _DisplayTextRequestModel;

  factory DisplayTextRequestModel.fromJson(Map<String, dynamic> json) =>
      _$DisplayTextRequestModelFromJson(json);
}
