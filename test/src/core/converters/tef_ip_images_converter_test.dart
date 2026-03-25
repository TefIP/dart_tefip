import 'package:dart_tefip/src/core/converters/tef_ip_images_converter.dart';
import 'package:test/test.dart';

void main() {
  const converter = TefIPImagesConverter();

  group('TefIPImagesConverter', () {
    group('fromJson', () {
      test('flat list of strings returns List<String>', () {
        final result = converter.fromJson(['img1', 'img2', 'img3']);

        expect(result, equals(['img1', 'img2', 'img3']));
      });

      test('nested list returns flattened List<String>', () {
        final result = converter.fromJson([
          ['img1', 'img2'],
        ]);

        expect(result, equals(['img1', 'img2']));
      });

      test('non-list input throws FormatException', () {
        expect(() => converter.fromJson('not a list'), throwsFormatException);
        expect(() => converter.fromJson(42), throwsFormatException);
        expect(() => converter.fromJson(null), throwsFormatException);
      });

      test('empty list throws FormatException', () {
        expect(() => converter.fromJson([]), throwsFormatException);
      });

      test('list with non-string item throws FormatException', () {
        expect(() => converter.fromJson([1, 2, 3]), throwsFormatException);
      });
    });

    group('toJson', () {
      test('returns the list as-is', () {
        final images = ['img1', 'img2'];
        final result = converter.toJson(images);

        expect(result, same(images));
      });

      test('returns empty list as-is', () {
        final result = converter.toJson([]);

        expect(result, isEmpty);
      });
    });
  });
}
