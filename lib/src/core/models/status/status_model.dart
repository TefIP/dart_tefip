import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
/// Model representing the runtime status of the terminal/service.
///
/// Typically returned by a health or status endpoint,
/// indicating current state and operational uptime.
///
/// Fields:
/// - [status]: Current service status (e.g., running, stopped).
/// - [uptimeSeconds]: Total uptime in seconds since startup.
/// - [startedAt]: Timestamp indicating when the service was started
///   (ISO-8601 string expected).
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class StatusModel with _$StatusModel {
  const factory StatusModel({
    required String status,
    required int uptimeSeconds,
    required String startedAt,
  }) = _StatusModel;

  factory StatusModel.fromJson(
    Map<String, dynamic> json,
  ) => _$StatusModelFromJson(json);
}
