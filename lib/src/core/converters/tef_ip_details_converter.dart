import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

/// Custom JSON converter used to normalize dynamic `details` payloads
/// returned by the TefIP API.
///
/// Some API responses may return the `details` field in different formats:
/// - `null`
/// - The string `'null'`
/// - A decoded `Map<String, dynamic>`
/// - A JSON-encoded `String`
///
/// This converter ensures that all supported representations are converted
/// into a `Map<String, dynamic>?`, providing a consistent structure
/// for deserialization.
///
/// If the incoming value cannot be converted into a valid JSON map,
/// a [FormatException] is thrown.
class TefIPDetailsConverter
    implements JsonConverter<Map<String, dynamic>?, dynamic> {
  /// Creates a constant instance of [TefIPDetailsConverter].
  const TefIPDetailsConverter();

  /// Converts incoming JSON data into a `Map<String, dynamic>?`.
  ///
  /// Supported inputs:
  /// - `null`
  /// - `'null'`
  /// - `Map<String, dynamic>`
  /// - JSON-encoded `String`
  ///
  /// Throws a [FormatException] if the value cannot be parsed.
  @override
  Map<String, dynamic>? fromJson(dynamic json) {
    if (json == null || json == 'null') return null;
    if (json is Map<String, dynamic>) return json;
    if (json is String) {
      return jsonDecode(json) as Map<String, dynamic>;
    }
    throw FormatException();
  }

  /// Converts a `Map<String, dynamic>?` into a JSON-compatible structure.
  ///
  /// The map is returned as-is without additional transformation.
  @override
  dynamic toJson(Map<String, dynamic>? object) {
    return object;
  }
}