import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_model.freezed.dart';
part 'status_model.g.dart';

@freezed
abstract class StatusModel with _$StatusModel {
  const factory StatusModel({
    required String status,
    required int uptimeSeconds,
    required String startedAt,
  }) = _StatusModel;

  factory StatusModel.fromJson(Map<String, dynamic> json) =>
      _$StatusModelFromJson(json);
}
