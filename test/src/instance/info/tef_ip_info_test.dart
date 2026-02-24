import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/info/tef_ip_info.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/info_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPInfo', () {
    late TefIPInfo info;
    late MockHttpClient kHttpClient;

    setUp(() {
      kHttpClient = MockHttpClient();
      info = TefIPInfo();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
    });

    test('should return InfoModel on success', () async {
      final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.info);

      final successJson = kInfoModel.toJson();
      final response = http.Response(jsonEncode(successJson), 200);

      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => response);

      final result = await info.get(
        client: kHttpClient,
      );

      expect(result, equals(kInfoModel));

      verify(
        () => kHttpClient.get(
          Uri.parse(expectedUrl),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });

    test('should throw TefIPRequestException on ClientException', () async {
      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenThrow(http.ClientException('Network error'));

      expect(
        () => info.get(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should rethrow TefIPRequestException', () async {
      final errorResponse = http.Response('{"message":"Bad request"}', 400);

      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => errorResponse);

      expect(
        () => info.get(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should wrap unknown errors into TefIPUnexpectedException', () async {
      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenThrow(Exception('Unexpected error'));

      expect(
        () => info.get(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
