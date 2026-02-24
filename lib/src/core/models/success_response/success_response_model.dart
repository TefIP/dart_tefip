import 'package:freezed_annotation/freezed_annotation.dart';

part 'success_response_model.freezed.dart';
part 'success_response_model.g.dart';

@freezed
/// Standard model representing a successful API response.
///
/// Used in endpoints that return only a confirmation message
/// without additional payload data.
///
/// Fields:
/// - [message]: Informational message returned by the service
///   indicating successful execution.
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class SuccessResponseModel with _$SuccessResponseModel {
  const factory SuccessResponseModel({
    required String message,
  }) = _SuccessResponseModel;

  factory SuccessResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SuccessResponseModelFromJson(json);
}
