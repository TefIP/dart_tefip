import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/sale/tef_ip_sale_payment.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/sale_mutation_response_model_mock.dart';
import '../../../../testing/mocks/models/sale_payment_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPSalePayment', () {
    late TefIPSalePayment salePayment;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      salePayment = TefIPSalePayment();
    });

    group('post', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.salePayment);

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            jsonEncode(kSaleMutationResponse.toJson()),
            200,
          ),
        );

        final result = await salePayment.post(
          payment: kSalePayment,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSalePayment.toJson()),
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
          () => salePayment.post(payment: kSalePayment, client: kHttpClient),
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
          () => salePayment.post(payment: kSalePayment, client: kHttpClient),
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
          () => salePayment.post(payment: kSalePayment, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('patch', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.salePaymentById(kSalePaymentId),
        );

        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            jsonEncode(kSaleMutationResponse.toJson()),
            200,
          ),
        );

        final result = await salePayment.patch(
          paymentId: kSalePaymentId,
          payment: kSalePayment,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.patch(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSalePayment.toJson()),
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
          () => salePayment.patch(
            paymentId: kSalePaymentId,
            payment: kSalePayment,
            client: kHttpClient,
          ),
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
          () => salePayment.patch(
            paymentId: kSalePaymentId,
            payment: kSalePayment,
            client: kHttpClient,
          ),
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
          () => salePayment.patch(
            paymentId: kSalePaymentId,
            payment: kSalePayment,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('delete', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.salePaymentById(kSalePaymentId),
        );

        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response(
            jsonEncode(kSaleMutationResponse.toJson()),
            200,
          ),
        );

        final result = await salePayment.delete(
          paymentId: kSalePaymentId,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.delete(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
          ),
        ).called(1);
      });

      test('should throw TefIPRequestException on ClientException', () {
        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(httpError);

        expect(
          () => salePayment.delete(
            paymentId: kSalePaymentId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () {
        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(TefIPRequestException(message: 'fail', statusCode: 400));

        expect(
          () => salePayment.delete(
            paymentId: kSalePaymentId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () {
        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(Exception());

        expect(
          () => salePayment.delete(
            paymentId: kSalePaymentId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });
  });
}
