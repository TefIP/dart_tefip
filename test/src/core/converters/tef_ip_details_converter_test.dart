import 'dart:convert';

import 'package:dart_tefip/src/core/converters/tef_ip_details_converter.dart';
import 'package:test/test.dart';

void main() {
  const converter = TefIPDetailsConverter();

  group('TefIPDetailsConverter', () {
    group('fromJson', () {
      test('null returns null', () {
        expect(converter.fromJson(null), isNull);
      });

      test('string "null" returns null', () {
        expect(converter.fromJson('null'), isNull);
      });

      test('Map<String, dynamic> is returned as-is', () {
        final map = {'key': 'value', 'number': 42};
        expect(converter.fromJson(map), equals(map));
      });

      test('JSON-encoded string is decoded to map', () {
        final map = {'nsu': '12345', 'brand': 'visa'};
        final jsonString = jsonEncode(map);
        final result = converter.fromJson(jsonString);

        expect(result, equals(map));
      });

      test('JSON string with non-object root throws FormatException', () {
        expect(
          () => converter.fromJson(jsonEncode([1, 2, 3])),
          throwsFormatException,
        );
      });

      test('invalid type (int) throws FormatException', () {
        expect(() => converter.fromJson(42), throwsFormatException);
      });

      test('invalid type (bool) throws FormatException', () {
        expect(() => converter.fromJson(true), throwsFormatException);
      });
    });

    group('toJson', () {
      test('map is returned as-is', () {
        final map = {'key': 'value'};
        expect(converter.toJson(map), same(map));
      });

      test('null is returned as null', () {
        expect(converter.toJson(null), isNull);
      });
    });
  });
}
