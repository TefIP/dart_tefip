import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_response_model.freezed.dart';
part 'success_response_model.g.dart';

@freezed
abstract class SuccessResponseModel with _$SuccessResponseModel {
  const factory SuccessResponseModel({
    required String message,
  }) = _SuccessResponseModel;

  factory SuccessResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SuccessResponseModelFromJson(json);
}
