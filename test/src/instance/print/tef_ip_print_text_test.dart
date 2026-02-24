import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_text.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/models/print_text_request_model_mock.dart';
import '../../../../testing/mocks/shared/success_response_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPPrintText', () {
    late TefIPPrintText printText;
    late MockHttpClient kHttpClient;

    setUp(() {
      kHttpClient = MockHttpClient();
      printText = TefIPPrintText();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue(<Map<String, dynamic>>[]);
      registerFallbackValue('');
    });

    test('should return SuccessResponseModel on success', () async {
      final expectedUrl =
          TefIpUrlBuilder.build(TefIPEndpoints.printText);

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

      final result = await printText.post(
        text: kPrintTextRequest,
        client: kHttpClient,
      );

      expect(result, equals(kSuccessResponse));

      verify(
        () => kHttpClient.post(
          Uri.parse(expectedUrl),
          headers: any(named: 'headers'),
          body: jsonEncode(kPrintTextRequest),
        ),
      ).called(1);
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
        () => printText.post(
          text: kPrintTextRequest,
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should rethrow TefIPRequestException', () async {
      final errorResponse =
          http.Response('{"message":"Bad request"}', 400);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => errorResponse);

      expect(
        () => printText.post(
          text: kPrintTextRequest,
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
        () => printText.post(
          text: kPrintTextRequest,
          client: kHttpClient,
        ),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}