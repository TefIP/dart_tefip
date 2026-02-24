import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
/// Model representing terminal/application runtime information.
///
/// This model is typically returned by an information endpoint
/// that exposes device, environment and operational state data.
///
/// Fields:
/// - [appName]: Application name running on the terminal.
/// - [version]: Application semantic version.
/// - [build]: Internal build number or identifier.
/// - [platform]: Operating system/platform identifier.
/// - [locale]: Current device locale (e.g., `pt-BR`).
/// - [timeZone]: Device time zone identifier.
/// - [mode]: Current execution mode (e.g., production, homologation).
/// - [isActive]: Indicates whether the terminal is active.
/// - [isBusy]: Indicates whether the terminal is currently processing an operation.
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class InfoModel with _$InfoModel {
  const factory InfoModel({
    required String appName,
    required String version,
    required String build,
    required String platform,
    required String locale,
    required String timeZone,
    required String mode,
    required bool isActive,
    required bool isBusy,
  }) = _InfoModel;

  factory InfoModel.fromJson(Map<String, dynamic> json) =>
      _$InfoModelFromJson(json);
}
