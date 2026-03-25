import 'package:dart_tefip/src/core/converters/tef_ip_unix_datetime_converter.dart';
import 'package:test/test.dart';

void main() {
  const converter = TefIPUnixDateTimeConverter();

  group('TefIPUnixDateTimeConverter', () {
    group('fromJson', () {
      test('null returns null', () {
        expect(converter.fromJson(null), isNull);
      });

      test('seconds timestamp is converted to DateTime', () {
        const seconds = 1700000000;
        final result = converter.fromJson(seconds);

        expect(result, isNotNull);
        expect(
          result!.millisecondsSinceEpoch,
          equals(seconds * 1000),
        );
      });

      test('milliseconds timestamp is converted to DateTime', () {
        const millis = 1700000000000;
        final result = converter.fromJson(millis);

        expect(result, isNotNull);
        expect(result!.millisecondsSinceEpoch, equals(millis));
      });

      test('threshold value (1000000000000) is treated as milliseconds', () {
        const threshold = 1000000000000;
        final result = converter.fromJson(threshold);

        expect(result!.millisecondsSinceEpoch, equals(threshold));
      });

      test('value below threshold is treated as seconds', () {
        const belowThreshold = 999999999999;
        final result = converter.fromJson(belowThreshold);

        expect(result!.millisecondsSinceEpoch, equals(belowThreshold * 1000));
      });
    });

    group('toJson', () {
      test('null returns null', () {
        expect(converter.toJson(null), isNull);
      });

      test('DateTime is converted to Unix seconds', () {
        final date = DateTime.fromMillisecondsSinceEpoch(1700000000 * 1000);
        final result = converter.toJson(date);

        expect(result, equals(1700000000));
      });

      test('round-trip: fromJson → toJson returns original seconds value', () {
        const originalSeconds = 1700000000;
        final dateTime = converter.fromJson(originalSeconds);
        final backToSeconds = converter.toJson(dateTime);

        expect(backToSeconds, equals(originalSeconds));
      });
    });
  });
}
