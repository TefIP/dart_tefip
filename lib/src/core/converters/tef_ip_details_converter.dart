import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

class TefIPDetailsConverter
    implements JsonConverter<Map<String, dynamic>?, dynamic> {
  const TefIPDetailsConverter();

  @override
  Map<String, dynamic>? fromJson(dynamic json) {
    if (json == null || json == 'null') return null;
    if (json is Map<String, dynamic>) return json;
    if (json is String) {
      return jsonDecode(json) as Map<String, dynamic>;
    }
    throw FormatException();
  }

  @override
  dynamic toJson(Map<String, dynamic>? object) {
    return object;
  }
}
