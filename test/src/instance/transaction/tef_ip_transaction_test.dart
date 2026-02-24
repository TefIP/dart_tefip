import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/transaction/tef_ip_transaction.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/transaction_model_mock.dart';
import '../../../../testing/mocks/models/transaction_request_model_mock.dart';
import '../../../../testing/mocks/models/transaction_response_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/reference_id_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPTransaction', () {
    late TefIPTransaction transaction;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      transaction = TefIPTransaction();
    });

    group('getAll', () {
      test('should return list of TransactionModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.transaction);

        final response = http.Response(
          jsonEncode([kTransaction.toJson()]),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await transaction.getAll(client: kHttpClient);

        expect(result, equals([kTransaction]));

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
        ).thenThrow(httpError);

        expect(
          () => transaction.getAll(client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () async {
        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(
          TefIPRequestException(message: 'fail', statusCode: 400),
        );

        expect(
          () => transaction.getAll(client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () async {
        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(Exception());

        expect(
          () => transaction.getAll(client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('get by referenceId', () {
      test('should return TransactionModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.transaction,
          param: kReferenceId,
        );

        final response = http.Response(
          jsonEncode(kTransaction.toJson()),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await transaction.get(
          referenceId: kReferenceId,
          client: kHttpClient,
        );

        expect(result, equals(kTransaction));

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
        ).thenThrow(httpError);

        expect(
          () => transaction.get(
            referenceId: kReferenceId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () async {
        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(
          TefIPRequestException(message: 'fail', statusCode: 400),
        );

        expect(
          () => transaction.get(
            referenceId: kReferenceId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () async {
        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenThrow(Exception());

        expect(
          () => transaction.get(
            referenceId: kReferenceId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('post', () {
      test('should return TransactionResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.transaction);

        final response = http.Response(
          jsonEncode(kTransactionResponse.toJson()),
          200,
        );

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer((_) async => response);

        final result = await transaction.post(
          transactionRequest: kTransactionRequest,
          client: kHttpClient,
        );

        expect(result, equals(kTransactionResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kTransactionRequest.toJson()),
          ),
        ).called(1);
      });

      test('should throw TefIPRequestException on ClientException', () async {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(httpError);

        expect(
          () => transaction.post(
            transactionRequest: kTransactionRequest,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should rethrow TefIPRequestException', () async {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(
          TefIPRequestException(message: 'fail', statusCode: 400),
        );

        expect(
          () => transaction.post(
            transactionRequest: kTransactionRequest,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw TefIPUnexpectedException on unknown error', () async {
        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenThrow(Exception());

        expect(
          () => transaction.post(
            transactionRequest: kTransactionRequest,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });
  });
}
