import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_request_model.freezed.dart';
part 'notification_request_model.g.dart';

/// Model representing a notification request sent to the terminal device.
///
/// Fields:
/// - [title]: Notification title shown on the device.
/// - [message]: Notification body text.
@freezed
abstract class NotificationRequestModel with _$NotificationRequestModel {
  const factory NotificationRequestModel({
    required String title,
    required String message,
  }) = _NotificationRequestModel;

  factory NotificationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationRequestModelFromJson(json);
}
