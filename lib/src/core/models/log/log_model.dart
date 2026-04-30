import 'package:dart_tefip/src/core/converters/tef_ip_unix_datetime_converter.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_log_level.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_log_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_model.freezed.dart';
part 'log_model.g.dart';

/// Model representing a log entry from the TEF IP terminal.
///
/// Fields:
/// - [id]: Log entry identifier.
/// - [level]: Severity level of the log.
/// - [source]: Origin system that produced the log.
/// - [message]: Log message.
/// - [details]: Extra context (optional).
/// - [createdAt]: Creation timestamp (Unix → DateTime).
@freezed
abstract class LogModel with _$LogModel {
  const factory LogModel({
    required int id,
    required TefIPLogLevel level,
    required TefIPLogSource source,
    required String message,
    String? details,
    @TefIPUnixDateTimeConverter() DateTime? createdAt,
  }) = _LogModel;

  factory LogModel.fromJson(Map<String, dynamic> json) =>
      _$LogModelFromJson(json);
}
