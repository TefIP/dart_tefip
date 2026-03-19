import 'dart:convert';

import 'package:dart_tefip/src/core/builders/headers/tef_ip_headers_builder.dart';
import 'package:dart_tefip/src/core/exceptions/tef_ip_request_exception.dart';
import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:meta/meta.dart';

import 'package:http/http.dart' as http;

import '../utils/http/http_client_default.dart'
    if (dart.library.js) '../utils/http/http_client_web.dart'
    if (dart.library.io) '../utils/http/http_client_io.dart';

/// Internal HTTP client for all SDK network operations.
///
/// Provides static [get] and [post] methods that handle:
/// - Header injection via [TefIPHeadersBuilder]
/// - Optional per-request timeout (falls back to [TefIPConfigs.requestsTimeOut];
///   if both are `null`, the request waits indefinitely)
/// - JSON parsing via a typed [onSuccess] callback
/// - HTTP error detection (non-2xx → [TefIPRequestException])
/// - Automatic client lifecycle: creates and closes an internal
///   [http.Client] when none is provided
///
/// An external [http.Client] can be injected for testing.
@immutable
abstract class TefIPNetworkingClient {
  static http.Client _streamingHttpClient() {
    return createClient();
  }

  /// Performs an HTTP GET request to [url] and returns a typed result.
  ///
  /// Parameters:
  /// - [url]: Full request URL.
  /// - [returnRawResponse]: When `true`, returns the raw response body as [T]
  ///   without JSON parsing. Default: `false`.
  /// - [onSuccess]: Required when [returnRawResponse] is `false`.
  ///   Maps the decoded JSON to [T].
  /// - [headers]: Additional request headers merged with the default ones.
  /// - [client]: Optional HTTP client for testing. Created and closed internally
  ///   when omitted.
  /// - [timeout]: Per-request timeout. Falls back to [TefIPConfigs.requestsTimeOut].
  ///   No timeout is applied when both are `null`.
  ///
  /// Throws [TefIPRequestException] on non-2xx responses.
  static Future<T> get<T>({
    required String url,
    bool returnRawResponse = false,
    T Function(dynamic json)? onSuccess,
    Map<String, String>? headers,
    http.Client? client,
    Duration? timeout,
  }) async {
    final internalClient = client == null;
    client ??= _streamingHttpClient();
    headers = TefIPHeadersBuilder.build(additionalHeader: headers);

    final uri = Uri.parse(url);

    try {
      final effectiveTimeout = timeout ?? TefIPConfigs.requestsTimeOut;
      final responseFuture = client.get(uri, headers: headers);
      final response = await (effectiveTimeout != null
          ? responseFuture.timeout(effectiveTimeout)
          : responseFuture);

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

      if (onSuccess == null) {
        throw ArgumentError(
          'onSuccess is required when returnRawResponse = false',
        );
      }

      return onSuccess(decoded);
    } finally {
      if (internalClient) client.close();
    }
  }

  /// Performs an HTTP POST request to [url] and returns a typed result.
  ///
  /// Parameters:
  /// - [url]: Full request URL.
  /// - [body]: Request payload (string, bytes, or Map).
  /// - [encoding]: Body encoding. Defaults to the `http` package behavior.
  /// - [returnRawResponse]: When `true`, returns the raw response body as [T].
  ///   Default: `false`.
  /// - [onSuccess]: Required when [returnRawResponse] is `false`.
  ///   Maps the decoded JSON to [T].
  /// - [headers]: Additional request headers merged with the default ones.
  /// - [client]: Optional HTTP client for testing.
  /// - [timeout]: Per-request timeout. Falls back to [TefIPConfigs.requestsTimeOut].
  ///   No timeout is applied when both are `null`.
  ///
  /// Throws [TefIPRequestException] on non-2xx responses.
  static Future<T> post<T>({
    required String url,
    Object? body,
    Encoding? encoding,
    bool returnRawResponse = false,
    T Function(dynamic json)? onSuccess,
    Map<String, String>? headers,
    http.Client? client,
    Duration? timeout,
  }) async {
    final internalClient = client == null;
    client ??= _streamingHttpClient();
    headers = TefIPHeadersBuilder.build(additionalHeader: headers);

    final uri = Uri.parse(url);

    try {
      final effectiveTimeout = timeout ?? TefIPConfigs.requestsTimeOut;
      final responseFuture = client.post(
        uri,
        headers: headers,
        body: body,
        encoding: encoding,
      );
      final response = await (effectiveTimeout != null
          ? responseFuture.timeout(effectiveTimeout)
          : responseFuture);

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

      if (onSuccess == null) {
        throw ArgumentError(
          'onSuccess is required when returnRawResponse = false',
        );
      }

      return onSuccess(decoded);
    } finally {
      if (internalClient) client.close();
    }
  }
}
