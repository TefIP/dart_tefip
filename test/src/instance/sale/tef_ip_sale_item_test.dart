import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/sale/tef_ip_sale_item.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/sale_item_model_mock.dart';
import '../../../../testing/mocks/models/sale_mutation_response_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPSaleItem', () {
    late TefIPSaleItem saleItem;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      saleItem = TefIPSaleItem();
    });

    group('post', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.saleItem);

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

        final result = await saleItem.post(
          item: kSaleItem,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSaleItem.toJson()),
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
          () => saleItem.post(item: kSaleItem, client: kHttpClient),
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
          () => saleItem.post(item: kSaleItem, client: kHttpClient),
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
          () => saleItem.post(item: kSaleItem, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('patch', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.saleItemById(kSaleItemId),
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

        final result = await saleItem.patch(
          itemId: kSaleItemId,
          item: kSaleItem,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.patch(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kSaleItem.toJson()),
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
          () => saleItem.patch(
            itemId: kSaleItemId,
            item: kSaleItem,
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
          () => saleItem.patch(
            itemId: kSaleItemId,
            item: kSaleItem,
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
          () => saleItem.patch(
            itemId: kSaleItemId,
            item: kSaleItem,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('delete', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.saleItemById(kSaleItemId),
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

        final result = await saleItem.delete(
          itemId: kSaleItemId,
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
          () => saleItem.delete(itemId: kSaleItemId, client: kHttpClient),
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
          () => saleItem.delete(itemId: kSaleItemId, client: kHttpClient),
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
          () => saleItem.delete(itemId: kSaleItemId, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('cancel', () {
      test('should return SaleMutationResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.saleItemCancel(kSaleItemId),
        );

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

        final result = await saleItem.cancel(
          itemId: kSaleItemId,
          client: kHttpClient,
        );

        expect(result, equals(kSaleMutationResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
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
          () => saleItem.cancel(itemId: kSaleItemId, client: kHttpClient),
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
          () => saleItem.cancel(itemId: kSaleItemId, client: kHttpClient),
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
          () => saleItem.cancel(itemId: kSaleItemId, client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });
  });
}
