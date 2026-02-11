import 'package:json_annotation/json_annotation.dart';

class TefIPUnixDateTimeConverter implements JsonConverter<DateTime?, int?> {
  const TefIPUnixDateTimeConverter();

  @override
  DateTime? fromJson(int? ts) {
    if (ts == null) return null;
    final ms = ts < 1000000000000 ? ts * 1000 : ts;
    return DateTime.fromMillisecondsSinceEpoch(ms);
  }

  @override
  int? toJson(DateTime? date) {
    if (date == null) return null;
    return date.toUtc().millisecondsSinceEpoch ~/ 1000;
  }
}
