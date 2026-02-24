import 'package:dart_tefip/src/core/builders/headers/tef_ip_headers_builder.dart';
import 'package:test/test.dart';

import '../../../../../testing/mocks/shared/password_mock.dart';
import '../../../../../testing/mocks/shared/username_mock.dart';

void main() {
  group('TefIPHeadersBuilder', () {
    const kMockHeader1 = {'X-Global': 'global-value'};
    const kMockHeader2 = {'X-Test': 'test-value'};

    setUp(() {
      TefIPHeadersBuilder.username = null;
      TefIPHeadersBuilder.password = null;
      TefIPHeadersBuilder.includeHeaders({});
    });

    group('Default values', () {
      test('should return empty username and password when not configured', () {
        expect(TefIPHeadersBuilder.username, '');
        expect(TefIPHeadersBuilder.password, '');
      });
    });

    group('Authentication setters', () {
      test('should set username and password correctly', () {
        TefIPHeadersBuilder.username = kUsername;
        TefIPHeadersBuilder.password = kPassword;

        expect(TefIPHeadersBuilder.username, kUsername);
        expect(TefIPHeadersBuilder.password, kPassword);
      });
    });

    group('Build headers', () {
      test('should generate default headers correctly', () {
        final headers = TefIPHeadersBuilder.build();

        expect(headers['Content-Type'], 'application/json');
        expect(headers['Authorization'], null);
      });

      test('should generate with authorization headers correctly', () {
        TefIPHeadersBuilder.username = kUsername;
        TefIPHeadersBuilder.password = kPassword;

        final headers = TefIPHeadersBuilder.build();

        expect(headers['Content-Type'], 'application/json');
        expect(headers['Authorization'], 'Basic $kUsername:$kPassword');
      });

      test('should include global headers', () {
        TefIPHeadersBuilder.includeHeaders(kMockHeader1);

        final headers = TefIPHeadersBuilder.build();

        expect(
          headers[kMockHeader1.keys.first],
          equals(kMockHeader1.values.first),
        );
      });

      test('request headers should override global headers', () {
        TefIPHeadersBuilder.includeHeaders(kMockHeader1);

        final headers = TefIPHeadersBuilder.build(
          additionalHeader: kMockHeader2,
        );

        expect(
          headers[kMockHeader2.keys.first],
          equals(kMockHeader2.values.first),
        );
      });

      test(
        'should merge authentication, global and request headers correctly',
        () {
          TefIPHeadersBuilder.username = kUsername;
          TefIPHeadersBuilder.password = kPassword;

          TefIPHeadersBuilder.includeHeaders(kMockHeader1);

          final headers = TefIPHeadersBuilder.build(
            additionalHeader: kMockHeader2,
          );

          expect(
            headers,
            containsPair('Content-Type', 'application/json'),
          );
          expect(
            headers,
            containsPair('Authorization', 'Basic $kUsername:$kPassword'),
          );
          expect(
            headers[kMockHeader1.keys.first],
            equals(kMockHeader1.values.first),
          );
          expect(
            headers[kMockHeader2.keys.first],
            equals(kMockHeader2.values.first),
          );
        },
      );
    });

    group('includeHeaders accumulation', () {
      test('should accumulate multiple includeHeaders calls', () {
        TefIPHeadersBuilder.includeHeaders(kMockHeader1);
        TefIPHeadersBuilder.includeHeaders(kMockHeader2);

        final headers = TefIPHeadersBuilder.build();

        expect(
          headers[kMockHeader1.keys.first],
          equals(kMockHeader1.values.first),
        );
        expect(
          headers[kMockHeader2.keys.first],
          equals(kMockHeader2.values.first),
        );
      });
    });
  });
}
