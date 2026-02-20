import 'package:json_annotation/json_annotation.dart';

/// Custom JSON converter responsible for handling Unix timestamp
/// serialization and deserialization.
///
/// The TefIP API may return timestamps in:
/// - Seconds since Unix epoch
/// - Milliseconds since Unix epoch
///
/// This converter automatically normalizes both formats into
/// a nullable [DateTime] instance.
///
/// Serialization always converts the [DateTime] value to
/// a Unix timestamp in seconds (UTC).
class TefIPUnixDateTimeConverter
    implements JsonConverter<DateTime?, int?> {
  /// Creates a constant instance of [TefIPUnixDateTimeConverter].
  const TefIPUnixDateTimeConverter();

  /// Converts a Unix timestamp into a [DateTime].
  ///
  /// If the timestamp value is:
  /// - `null`, returns `null`
  /// - Less than `1000000000000`, it is treated as seconds
  /// - Otherwise, it is treated as milliseconds
  ///
  /// The resulting [DateTime] is created using
  /// [DateTime.fromMillisecondsSinceEpoch].
  @override
  DateTime? fromJson(int? ts) {
    if (ts == null) return null;

    final ms = ts < 1000000000000 ? ts * 1000 : ts;
    return DateTime.fromMillisecondsSinceEpoch(ms);
  }

  /// Converts a [DateTime] into a Unix timestamp (seconds).
  ///
  /// The value is first converted to UTC and then truncated
  /// to seconds precision.
  ///
  /// Returns `null` if the input date is `null`.
  @override
  int? toJson(DateTime? date) {
    if (date == null) return null;
    return date.toUtc().millisecondsSinceEpoch ~/ 1000;
  }
}