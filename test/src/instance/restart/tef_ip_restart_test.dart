import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/restart/tef_ip_restart.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/status_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPRestart', () {
    late TefIPRestart restart;
    late MockHttpClient kHttpClient;

    setUp(() {
      kHttpClient = MockHttpClient();
      restart = TefIPRestart();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
    });

    test('should return StatusModel on success', () async {
      final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.restart);

      final successJson = kStatus.toJson();
      final response = http.Response(jsonEncode(successJson), 200);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
          encoding: any(named: 'encoding'),
        ),
      ).thenAnswer((_) async => response);

      final result = await restart.post(
        client: kHttpClient,
      );

      expect(result, equals(kStatus));

      verify(
        () => kHttpClient.post(
          Uri.parse(expectedUrl),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });

    test('should throw TefIPRequestException on 403 response', () async {
      final response = http.Response('{"message":"Forbidden"}', 403);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => response);

      expect(
        () => restart.post(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should throw TefIPRequestException on ClientException', () async {
      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenThrow(http.ClientException('Network error'));

      expect(
        () => restart.post(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should wrap unknown errors into TefIPUnexpectedException', () async {
      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenThrow(Exception('Unexpected error'));

      expect(
        () => restart.post(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
