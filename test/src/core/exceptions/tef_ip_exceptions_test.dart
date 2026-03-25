import 'package:dart_tefip/src/core/exceptions/tef_ip_request_exception.dart';
import 'package:dart_tefip/src/core/exceptions/tef_ip_unexpected_exception.dart';
import 'package:test/test.dart';

void main() {
  group('TefIPRequestException', () {
    test('stores message, statusCode and rawBody', () {
      const exception = TefIPRequestException(
        message: 'Not Found',
        statusCode: 404,
        rawBody: '{"error":"not_found"}',
      );

      expect(exception.message, equals('Not Found'));
      expect(exception.statusCode, equals(404));
      expect(exception.rawBody, equals('{"error":"not_found"}'));
    });

    test('rawBody defaults to null when not provided', () {
      const exception = TefIPRequestException(
        message: 'Connection refused',
        statusCode: -1,
      );

      expect(exception.rawBody, isNull);
    });

    test('implements Exception', () {
      const exception = TefIPRequestException(
        message: 'error',
        statusCode: 500,
      );

      expect(exception, isA<Exception>());
    });

    test('can be thrown and caught', () {
      expect(
        () => throw const TefIPRequestException(
          message: 'server error',
          statusCode: 500,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });
  });

  group('TefIPUnexpectedException', () {
    test('stores the original exception', () {
      final original = Exception('original');
      final wrapper = TefIPUnexpectedException(exception: original);

      expect(wrapper.exception, same(original));
    });

    test('exception field can be null', () {
      const wrapper = TefIPUnexpectedException(exception: null);

      expect(wrapper.exception, isNull);
    });

    test('implements Exception', () {
      const wrapper = TefIPUnexpectedException(exception: null);

      expect(wrapper, isA<Exception>());
    });

    test('can store any object type', () {
      const wrapper = TefIPUnexpectedException(exception: 'raw string error');

      expect(wrapper.exception, equals('raw string error'));
    });

    test('can be thrown and caught', () {
      expect(
        () => throw const TefIPUnexpectedException(exception: 'fail'),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
