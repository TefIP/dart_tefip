import 'dart:convert';

import 'package:dart_tefip/src/core/builders/headers/tef_ip_headers_builder.dart';
import 'package:dart_tefip/src/core/exceptions/tef_ip_request_exception.dart';
import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;

import '../utils/http/http_client_default.dart'
    if (dart.library.js) '../utils/http/http_client_web.dart'
    if (dart.library.io) '../utils/http/http_client_io.dart';

@immutable
abstract class TefIPNetworkingClient {
  static http.Client _streamingHttpClient() {
    return createClient();
  }

  static Future<T> get<T>({
    required String url,
    bool returnRawResponse = false,
    T Function(Map<String, dynamic> json)? onSuccess,
    Map<String, String>? headers,
    http.Client? client,
    Duration? timeout,
  }) async {
    client ??= _streamingHttpClient();
    headers = TefIPHeadersBuilder.build(additionalHeader: headers);

    final uri = Uri.parse(url);

    final response = await client.get(uri, headers: headers);

    if (returnRawResponse) {
      return response.body as T;
    }

    final body = utf8.decode(response.bodyBytes);
    final decoded = jsonDecode(body);

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw TefIPRequestException(
        message: decoded is Map && decoded['message'] != null
            ? decoded['message'].toString()
            : 'Request failed',
        statusCode: response.statusCode,
        rawBody: body,
      );
    }

    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Response is not a JSON object');
    }

    if (onSuccess == null) {
      throw ArgumentError(
        'onSuccess is required when returnRawResponse = false',
      );
    }

    return onSuccess(decoded);
  }

  static Future<List<T>> getList<T>({
    required String url,
    bool returnRawResponse = false,
    List<T> Function(List<dynamic> json)? onSuccess,
    Map<String, String>? headers,
    http.Client? client,
    Duration? timeout,
  }) async {
    client ??= _streamingHttpClient();
    headers = TefIPHeadersBuilder.build(additionalHeader: headers);

    final uri = Uri.parse(url);

    final response = await client.get(uri, headers: headers);

    if (returnRawResponse) {
      return response.body as List<T>;
    }

    final body = utf8.decode(response.bodyBytes);
    final decoded = jsonDecode(body);

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw TefIPRequestException(
        message: decoded is Map && decoded['message'] != null
            ? decoded['message'].toString()
            : 'Request failed',
        statusCode: response.statusCode,
        rawBody: body,
      );
    }

    if (decoded is! List) {
      throw const FormatException('Response is not a JSON array');
    }

    if (onSuccess == null) {
      throw ArgumentError(
        'onSuccess is required when returnRawResponse = false',
      );
    }

    return onSuccess(decoded);
  }

  static Future<T> post<T>({
    required String url,
    Object? body,
    Encoding? encoding,
    bool returnRawResponse = false,
    T Function(Map<String, dynamic> json)? onSuccess,
    Map<String, String>? headers,
    http.Client? client,
    Duration? timeout,
  }) async {
    client ??= _streamingHttpClient();
    headers = TefIPHeadersBuilder.build(additionalHeader: headers);

    final uri = Uri.parse(url);

    final response = await client.post(
      uri,
      headers: headers,
      body: body,
      encoding: encoding,
    );

    if (returnRawResponse) {
      return response.body as T;
    }

    final responseBody = utf8.decode(response.bodyBytes);
    final decoded = jsonDecode(responseBody);

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw TefIPRequestException(
        message: decoded is Map && decoded['message'] != null
            ? decoded['message'].toString()
            : 'Request failed',
        statusCode: response.statusCode,
        rawBody: responseBody,
      );
    }

    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('Response is not a JSON object');
    }

    if (onSuccess == null) {
      throw ArgumentError(
        'onSuccess is required when returnRawResponse = false',
      );
    }

    return onSuccess(decoded);
  }
}
