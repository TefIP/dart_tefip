import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
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
