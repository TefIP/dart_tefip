import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/notification/tef_ip_notification.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/notification_request_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/success_response_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

void main() {
  group('TefIPNotification', () {
    late TefIPNotification notification;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue('');
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      notification = TefIPNotification();
    });

    group('post', () {
      test('should return SuccessResponseModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.notification);

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer(
          (_) async => http.Response.bytes(
            utf8.encode(jsonEncode(kSuccessResponse.toJson())),
            200,
          ),
        );

        final result = await notification.post(
          request: kNotificationRequest,
          client: kHttpClient,
        );

        expect(result, equals(kSuccessResponse));

        verify(
          () => kHttpClient.post(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
            body: jsonEncode(kNotificationRequest.toJson()),
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
          () => notification.post(
            request: kNotificationRequest,
            client: kHttpClient,
          ),
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
        ).thenThrow(TefIPRequestException(message: 'err', statusCode: 400));

        expect(
          () => notification.post(
            request: kNotificationRequest,
            client: kHttpClient,
          ),
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
        ).thenThrow(Exception('unknown'));

        expect(
          () => notification.post(
            request: kNotificationRequest,
            client: kHttpClient,
          ),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('TefIP.notification getter', () {
      test('returns TefIPNotification instance', () {
        TefIP.baseUrl = 'http://localhost:8080';
        // ignore: invalid_use_of_protected_member
        final notif = TefIP.instance.notification;
        expect(notif, isA<TefIPNotification>());
      });
    });
  });
}
