import 'package:dart_tefip/src/core/constants/tef_ip_strings.dart';
import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/shared/base_url_mock.dart';

void main() {
  group('TefIPConfigs', () {
    const kDuration = Duration(seconds: 10);

    setUp(() {
      TefIPConfigs.baseUrl = null;
      TefIPConfigs.requestsTimeOut = null;
    });

    group('requestsTimeOut', () {
      test('should be null by default', () {
        expect(TefIPConfigs.requestsTimeOut, isNull);
      });

      test('should allow overriding timeout', () {
        TefIPConfigs.requestsTimeOut = kDuration;

        expect(
          TefIPConfigs.requestsTimeOut,
          equals(kDuration),
        );
      });

      test('should allow resetting to null', () {
        TefIPConfigs.requestsTimeOut = kDuration;
        TefIPConfigs.requestsTimeOut = null;

        expect(TefIPConfigs.requestsTimeOut, isNull);
      });
    });

    group('baseUrl', () {
      test('should return defaultBaseUrl when not set', () {
        expect(
          TefIPConfigs.baseUrl,
          equals(TefIPStrings.defaultBaseUrl),
        );
      });

      test('should return custom baseUrl when set', () {
        TefIPConfigs.baseUrl = kBaseUrl;
        expect(
          TefIPConfigs.baseUrl,
          equals(kBaseUrl),
        );
      });

      test('should fallback to defaultBaseUrl when set to null', () {
        TefIPConfigs.baseUrl = kBaseUrl;
        TefIPConfigs.baseUrl = null;

        expect(
          TefIPConfigs.baseUrl,
          equals(TefIPStrings.defaultBaseUrl),
        );
      });
    });
  });
}
