import 'dart:convert';
import 'dart:typed_data';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_image.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/image_mock.dart';
import '../../../../testing/mocks/shared/success_response_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPPrintImage', () {
    late TefIPPrintImage printImage;
    late MockHttpClient kHttpClient;

    setUp(() {
      kHttpClient = MockHttpClient();
      printImage = TefIPPrintImage();
    });

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue(Uint8List(0));
    });

    test('should return SuccessResponseModel on success', () async {
      final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.printImage);
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

      final result = await printImage.post(
        imageData: kImage,
        client: kHttpClient,
      );

      expect(result, equals(kSuccessResponse));

      verify(
        () => kHttpClient.post(
          Uri.parse(expectedUrl),
          headers: {'Content-Type': 'application/octet-stream'},
          body: kImage,
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
        () => printImage.post(
          imageData: kImage,
          client: kHttpClient,
        ),
        throwsA(isA<TefIPRequestException>()),
      );
    });

    test('should rethrow TefIPRequestException', () async {
      final errorResponse = http.Response('{"message":"Bad request"}', 400);

      when(
        () => kHttpClient.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => errorResponse);

      expect(
        () => printImage.post(
          imageData: kImage,
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
        () => printImage.post(
          imageData: kImage,
          client: kHttpClient,
        ),
        throwsA(isA<TefIPUnexpectedException>()),
      );
    });
  });
}
