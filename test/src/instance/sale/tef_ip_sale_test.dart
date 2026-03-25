import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/sale/tef_ip_sale.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/sale_start_request_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/success_response_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPSale', () {
    late TefIPSale sale;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      sale = TefIPSale();
    });

    group('post', () {
      test('should return SuccessResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.sale);

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            jsonEncode(kSuccessResponse.toJson()),
            200,
          ),
        );

        final result = await sale.post(
          request: kSaleStartRequest,
          client: kHttpClient,
        );

        expect(result, equals(kSuccessResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSaleStartRequest.toJson()),
          ),
        ).called(1);
      });

      test('should throw TefIPRequestException on ClientException', () {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(httpError);

        expect(
          () => sale.post(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(TefIPRequestException(message: 'fail', statusCode: 400));

        expect(
          () => sale.post(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(Exception());

        expect(
          () => sale.post(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('patch', () {
      test('should return SuccessResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.sale);

        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            jsonEncode(kSuccessResponse.toJson()),
            200,
          ),
        );

        final result = await sale.patch(
          request: kSaleStartRequest,
          client: kHttpClient,
        );

        expect(result, equals(kSuccessResponse));

        verify(
          () => kHttpClient.patch(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSaleStartRequest.toJson()),
          ),
        ).called(1);
      });

      test('should throw TefIPRequestException on ClientException', () {
        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(httpError);

        expect(
          () => sale.patch(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () {
        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(TefIPRequestException(message: 'fail', statusCode: 400));

        expect(
          () => sale.patch(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () {
        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(Exception());

        expect(
          () => sale.patch(request: kSaleStartRequest, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });
  });
}
