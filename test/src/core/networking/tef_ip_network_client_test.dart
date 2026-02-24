import 'dart:convert';

import 'package:dart_tefip/src/core/exceptions/tef_ip_request_exception.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/shared/base_url_mock.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('TefIPNetworkingClient', () {
    late MockHttpClient kHttpClient;

    setUpAll(() {
      registerFallbackValue(Uri());
      registerFallbackValue(<String, String>{});
    });

    setUp(() {
      kHttpClient = MockHttpClient();
    });

    group('get', () {
      test('should return parsed object on success', () async {
        final response = http.Response(
          jsonEncode({'name': 'ok'}),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await TefIPNetworkingClient.get<String>(
          url: kBaseUrl,
          client: kHttpClient,
          onSuccess: (json) => json['name'],
        );

        expect(result, equals('ok'));
      });

      test('should throw TefIPRequestException on non-2xx', () async {
        final response = http.Response(
          jsonEncode({'message': 'error'}),
          400,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        expect(
          () => TefIPNetworkingClient.get<String>(
            url: kBaseUrl,
            client: kHttpClient,
            onSuccess: (json) => json['name'],
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test('should throw FormatException when body is not object', () async {
        final response = http.Response(
          jsonEncode(['invalid']),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        expect(
          () => TefIPNetworkingClient.get<String>(
            url: kBaseUrl,
            client: kHttpClient,
            onSuccess: (json) => json['name'],
          ),
          throwsA(isA<FormatException>()),
        );
      });

      test('should throw ArgumentError when onSuccess is null', () async {
        final response = http.Response(
          jsonEncode({'name': 'ok'}),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        expect(
          () => TefIPNetworkingClient.get<String>(
            url: kBaseUrl,
            client: kHttpClient,
          ),
          throwsA(isA<ArgumentError>()),
        );
      });

      test(
        'should return raw response when returnRawResponse is true',
        () async {
          final response = http.Response('raw', 200);

          when(
            () => kHttpClient.get(
              any(),
              headers: any(named: 'headers'),
            ),
          ).thenAnswer((_) async => response);

          final result = await TefIPNetworkingClient.get<String>(
            url: kBaseUrl,
            client: kHttpClient,
            returnRawResponse: true,
          );

          expect(result, equals('raw'));
        },
      );
    });

    group('getList', () {
      test('should return parsed list on success', () async {
        final response = http.Response(
          jsonEncode([
            {'id': 1},
          ]),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await TefIPNetworkingClient.getList<int>(
          url: kBaseUrl,
          client: kHttpClient,
          onSuccess: (list) => list.map((e) => e['id'] as int).toList(),
        );

        expect(result, equals([1]));
      });

      test('should throw FormatException when body is not list', () async {
        final response = http.Response(
          jsonEncode({'invalid': true}),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        expect(
          () => TefIPNetworkingClient.getList<int>(
            url: kBaseUrl,
            client: kHttpClient,
            onSuccess: (list) => [],
          ),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('post', () {
      test('should return parsed object on success', () async {
        final response = http.Response(
          jsonEncode({'result': 'ok'}),
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

        final result = await TefIPNetworkingClient.post<String>(
          url: kBaseUrl,
          client: kHttpClient,
          body: jsonEncode({'a': 1}),
          onSuccess: (json) => json['result'],
        );

        expect(result, equals('ok'));
      });

      test('should throw TefIPRequestException on non-2xx', () async {
        final response = http.Response(
          jsonEncode({'message': 'fail'}),
          500,
        );

        when(
          () => kHttpClient.post(
            any(),
            headers: any(named: 'headers'),
            body: any(named: 'body'),
            encoding: any(named: 'encoding'),
          ),
        ).thenAnswer((_) async => response);

        expect(
          () => TefIPNetworkingClient.post<String>(
            url: kBaseUrl,
            client: kHttpClient,
            body: '{}',
            onSuccess: (json) => '',
          ),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test(
        'should return raw response when returnRawResponse is true',
        () async {
          final response = http.Response('raw-post', 200);

          when(
            () => kHttpClient.post(
              any(),
              headers: any(named: 'headers'),
              body: any(named: 'body'),
              encoding: any(named: 'encoding'),
            ),
          ).thenAnswer((_) async => response);

          final result = await TefIPNetworkingClient.post<String>(
            url: kBaseUrl,
            client: kHttpClient,
            returnRawResponse: true,
          );

          expect(result, equals('raw-post'));
        },
      );
    });
  });
}
