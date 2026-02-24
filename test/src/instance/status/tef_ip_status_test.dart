import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/status/tef_ip_status.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/status_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPStatus', () {
    late TefIPStatus status;
    late MockHttpClient kHttpClient;

    setUp(() {
      kHttpClient = MockHttpClient();
      status = TefIPStatus();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
    });

    test('should return StatusModel on success', () async {
      final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.status);

      final successJson = kStatus.toJson();
      final response = http.Response(jsonEncode(successJson), 200);

      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => response);

      final result = await status.get(
        client: kHttpClient,
      );

      expect(result, equals(kStatus));

      verify(
        () => kHttpClient.get(
          Uri.parse(expectedUrl),
          headers: any(named: 'headers'),
        ),
      ).called(1);
    });

    test('should throw TefIPRequestException on 403 response', () async {
      final response = http.Response('{"message":"Forbidden"}', 403);

      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => response);

      expect(
        () => status.get(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should throw TefIPRequestException on ClientException', () async {
      when(
        () => kHttpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenThrow(http.ClientException('Network error'));

      expect(
        () => status.get(
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
        () => status.get(
          client: kHttpClient,
        ),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
