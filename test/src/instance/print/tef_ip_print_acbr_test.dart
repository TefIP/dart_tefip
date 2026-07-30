import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_acbr.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/base_url_mock.dart';
import '../../../../testing/mocks/shared/success_response_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPPrintAcbr', () {
    late TefIPPrintAcbr printAcbr;
    late MockHttpClient kHttpClient;

    setUp(() {
      TefIP.baseUrl = kBaseUrl;
      kHttpClient = MockHttpClient();
      printAcbr = TefIPPrintAcbr();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    test('sends raw ACBr content as text/plain and returns success', () async {
      final successJson = kSuccessResponse.toJson();
      final response = http.Response(jsonEncode(successJson), 200);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
          encoding: any(named: 'encoding'),
        ),
      ).thenAnswer((_) async => response);

      final result = await printAcbr.post(
        content: '</ce><n>TEF IP</n>',
        client: kHttpClient,
      );

      verify(
        () => kHttpClient.post(
          Uri.parse('$kBaseUrl/print/acbr'),
          headers: {'Content-Type': 'text/plain'},
          body: '</ce><n>TEF IP</n>',
        ),
      ).called(1);
      expect(result, equals(kSuccessResponse));
    });

    test('converts ClientException into TefIPRequestException', () async {
      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenThrow(http.ClientException('Network error'));

      expect(
        () => printAcbr.post(content: 'ACBr', client: kHttpClient),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('rethrows TefIPRequestException for HTTP errors', () async {
      final errorResponse = http.Response('{"message":"Bad request"}', 400);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => errorResponse);

      expect(
        () => printAcbr.post(content: 'ACBr', client: kHttpClient),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('wraps unknown errors into TefIPUnexpectedException', () async {
      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenThrow(Exception('Unexpected error'));

      expect(
        () => printAcbr.post(content: 'ACBr', client: kHttpClient),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
