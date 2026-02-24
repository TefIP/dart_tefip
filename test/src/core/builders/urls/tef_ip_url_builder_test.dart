import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:test/test.dart';
import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';

import '../../../../../testing/mocks/shared/base_url_mock.dart';

void main() {
  group('TefIpUrlBuilder', () {
    const kEndpoint = 'kEndpoint';
    const kParam = 'kParam';

    setUp(() {
      TefIPConfigs.baseUrl = kBaseUrl;
    });
    test('should build URL without param', () {
      final url = TefIpUrlBuilder.build('/$kEndpoint');

      expect(url, '$kBaseUrl/$kEndpoint');
    });

    test('should build URL with param', () {
      final url = TefIpUrlBuilder.build('/$kEndpoint', param: kParam);

      expect(url, '$kBaseUrl/$kEndpoint/$kParam');
    });

    test('should append param only when provided', () {
      final urlWithoutParam = TefIpUrlBuilder.build('/$kEndpoint');
      final urlWithParam = TefIpUrlBuilder.build('/$kEndpoint', param: kParam);

      expect(urlWithoutParam, '$kBaseUrl/$kEndpoint');
      expect(urlWithParam, '$kBaseUrl/$kEndpoint/$kParam');
    });
  });
}
