import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/instance/log/tef_ip_log.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../../testing/mocks/models/log_model_mock.dart';
import '../../../../testing/mocks/networking/tef_ip_networking_client_test.dart';
import '../../../../testing/mocks/shared/base_url_mock.dart';
import '../../../../testing/mocks/shared/uri_mock.dart';

http.StreamedResponse makeSseResponse(List<LogModel> events) {
  final lines = events.map((e) => 'data: ${jsonEncode(e.toJson())}\n\n').join();
  final bytes = utf8.encode(lines);
  return http.StreamedResponse(Stream.value(bytes), 200);
}

void main() {
  group('TefIPLog', () {
    late TefIPLog log;
    late MockHttpClient kHttpClient;

    final httpError = http.ClientException('Error');

    setUpAll(() {
      registerFallbackValue(UriMock());
      registerFallbackValue(<String, String>{});
      registerFallbackValue(http.Request('GET', Uri.parse(kBaseUrl)));
      TefIP.baseUrl = kBaseUrl;
    });

    setUp(() {
      kHttpClient = MockHttpClient();
      log = TefIPLog();
    });

    group('getAll', () {
      test('should return list of LogModel on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.logs);

        final response = http.Response(
          jsonEncode([kLog.toJson()]),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await log.getAll(client: kHttpClient);

        expect(result, equals([kLog]));

        verify(
          () => kHttpClient.get(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
          ),
        ).called(1);
      });

      test('should pass query params when filters are provided', () async {
        final expectedUrl = TefIpUrlBuilder.build(
          TefIPEndpoints.logs,
          queryParams: {
            'level': 'error',
            'source': 'app',
            'limit': '10',
            'search': 'crash',
          },
        );

        final response = http.Response(
          jsonEncode([kLog.toJson()]),
          200,
        );

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await log.getAll(
          level: TefIPLogLevel.error,
          source: TefIPLogSource.app,
          limit: 10,
          search: 'crash',
          client: kHttpClient,
        );

        expect(result, equals([kLog]));

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
          () => log.getAll(client: kHttpClient),
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
          () => log.getAll(client: kHttpClient),
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
          () => log.getAll(client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('downloadZip', () {
      test('should return non-empty Uint8List on success', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.logsZip);

        final response = http.Response('fake zip bytes content', 200);

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => response);

        final result = await log.downloadZip(client: kHttpClient);

        expect(result, isA<Uint8List>());
        expect(result, isNotEmpty);

        verify(
          () => kHttpClient.get(
            Uri.parse(expectedUrl),
            headers: any(named: 'headers'),
          ),
        ).called(1);
      });

      test('downloadZip preserves byte values above ASCII', () async {
        final expectedUrl = TefIpUrlBuilder.build(TefIPEndpoints.logsZip);
        final binary = Uint8List.fromList([0, 255, 120, 3, 4]);

        when(
          () => kHttpClient.get(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => http.Response.bytes(binary, 200));

        final result = await log.downloadZip(client: kHttpClient);

        expect(result, equals(binary));

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
          () => log.downloadZip(client: kHttpClient),
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
          () => log.downloadZip(client: kHttpClient),
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
          () => log.downloadZip(client: kHttpClient),
          throwsA(isA<TefIPUnexpectedException>()),
        );
      });
    });

    group('stream', () {
      test('should yield a single LogModel on success', () async {
        when(
          () => kHttpClient.send(any()),
        ).thenAnswer((_) async => makeSseResponse([kLog]));

        final result = await log.stream(client: kHttpClient).toList();

        expect(result, equals([kLog]));
      });

      test('should yield multiple LogModel events', () async {
        when(
          () => kHttpClient.send(any()),
        ).thenAnswer((_) async => makeSseResponse([kLog, kLog]));

        final result = await log.stream(client: kHttpClient).toList();

        expect(result.length, equals(2));
      });

      test('should throw TefIPRequestException on non-2xx response', () async {
        when(
          () => kHttpClient.send(any()),
        ).thenAnswer(
          (_) async => http.StreamedResponse(
            Stream.value(utf8.encode('{"message":"Unauthorized"}')),
            401,
          ),
        );

        expect(
          () => log.stream(client: kHttpClient).toList(),
          throwsA(isA<TefIPRequestException>()),
        );
      });

      test(
        'should throw TefIPRequestException on ClientException from send',
        () async {
          when(
            () => kHttpClient.send(any()),
          ).thenThrow(http.ClientException('Connection refused'));

          expect(
            () => log.stream(client: kHttpClient).toList(),
            throwsA(isA<TefIPRequestException>()),
          );
        },
      );

      test(
        'should throw TefIPUnexpectedException on unknown error from send',
        () async {
          when(
            () => kHttpClient.send(any()),
          ).thenThrow(Exception('Unknown error'));

          expect(
            () => log.stream(client: kHttpClient).toList(),
            throwsA(isA<TefIPUnexpectedException>()),
          );
        },
      );
    });
  });
}
