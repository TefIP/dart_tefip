import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/sale/tef_ip_sale_discount.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/sale_coupon_model_mock.dart';
import '../../../../testing/mocks/models/sale_discount_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPSaleDiscount', () {
    late TefIPSaleDiscount saleDiscount;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');
    const String kSaleDiscountId = 'DESC-1';

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      saleDiscount = TefIPSaleDiscount();
    });

    group('post', () {
      test('should return SaleCouponModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.saleDiscount);

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response.bytes(
            utf8.encode(jsonEncode(kSaleCoupon.toJson())),
            200,
          ),
        );

        final result = await saleDiscount.post(
          discount: mockSaleDiscountModel,
          client: kHttpClient,
        );

        expect(result, equals(kSaleCoupon));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(mockSaleDiscountModel.toJson()),
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
          () => saleDiscount.post(
              discount: mockSaleDiscountModel, client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });
    });

    group('patch', () {
      test('should return SaleCouponModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.saleDiscountById(kSaleDiscountId),
        );

        when(
          () => kHttpClient.patch(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response.bytes(
            utf8.encode(jsonEncode(kSaleCoupon.toJson())),
            200,
          ),
        );

        final result = await saleDiscount.patch(
          discountId: kSaleDiscountId,
          discount: mockSaleDiscountModel,
          client: kHttpClient,
        );

        expect(result, equals(kSaleCoupon));

        verify(
          () => kHttpClient.patch(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(mockSaleDiscountModel.toJson()),
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
          () => saleDiscount.patch(
            discountId: kSaleDiscountId,
            discount: mockSaleDiscountModel,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });
    });

    group('delete', () {
      test('should return SaleCouponModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.saleDiscountById(kSaleDiscountId),
        );

        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response.bytes(
            utf8.encode(jsonEncode(kSaleCoupon.toJson())),
            200,
          ),
        );

        final result = await saleDiscount.delete(
          discountId: kSaleDiscountId,
          client: kHttpClient,
        );

        expect(result, equals(kSaleCoupon));

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
          () => saleDiscount.delete(
            discountId: kSaleDiscountId,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });
    });

    group('clear', () {
      test('should return SaleCouponModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.saleDiscount);

        when(
          () => kHttpClient.delete(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer(
          (_) async => http.Response.bytes(
            utf8.encode(jsonEncode(kSaleCoupon.toJson())),
            200,
          ),
        );

        final result = await saleDiscount.clear(client: kHttpClient);

        expect(result, equals(kSaleCoupon));

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
          ),
        ).thenThrow(httpError);

        expect(
          () => saleDiscount.clear(client: kHttpClient),
          throwsA(isA<TefIPRequestException>()),
        );
      });
    });
  });
}
