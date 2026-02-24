import 'package:meta/meta.dart';

/// Internal header builder responsible for configuring and generating
/// HTTP headers for all TefIP API requests.
///
/// This class manages:
/// - Authentication credentials (username and password).
/// - Default headers required by the API.
/// - Globally included custom headers.
/// - Per-request additional headers.
///
/// Authentication is applied using a Basic-style Authorization header
/// composed from the configured username and password.
///
/// This class is immutable in design and intended for internal use only.
@immutable
@internal
abstract class TefIPHeadersBuilder {
  static String? _username;
  static String? _password;

  static Map<String, dynamic> _additionalHeadersToRequests = {};

  /// Sets the username used for authentication.
  ///
  /// Intended to be configured by the main SDK entry point.
  @internal
  static set username(String? username) {
    _username = username;
  }

  /// Returns the configured username.
  ///
  /// If not set, an empty string is returned.
  static String get username => _username ?? '';

  /// Sets the password used for authentication.
  ///
  /// Intended to be configured by the main SDK entry point.
  @internal
  static set password(String? password) {
    _password = password;
  }

  /// Returns the configured password.
  ///
  /// If not set, an empty string is returned.
  static String get password => _password ?? '';

  /// Builds the complete headers map for an HTTP request.
  ///
  /// The resulting headers include:
  /// - `Content-Type: application/json`
  /// - `Authorization: Basic <username>:<password>`
  /// - Globally included headers
  /// - Request-specific additional headers (if provided)
  ///
  /// The merge order guarantees that request-specific headers
  /// override global headers when keys collide.
  ///
  /// Example:
  /// ```dart
  /// final headers = TefIPHeadersBuilder.build();
  /// ```
  @internal
  static Map<String, String> build({Map<String, dynamic>? additionalHeader}) {
    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      if (username.isNotEmpty && password.isNotEmpty)
        'Authorization': 'Basic $username:$password',
    };

    headers = {
      ...headers,
      ..._additionalHeadersToRequests,
      ...?additionalHeader,
    };

    return headers;
  }

  /// Includes additional headers that will be attached
  /// to all future requests made by the SDK.
  ///
  /// Existing headers with the same key will be overridden.
  ///
  /// Example:
  /// ```dart
  /// TefIPHeadersBuilder.includeHeaders({
  ///   "X-Custom-Header": "value",
  /// });
  /// ```
  @internal
  static void includeHeaders(Map<String, dynamic> headers) {
    _additionalHeadersToRequests = {
      ..._additionalHeadersToRequests,
      ...headers,
    };
  }
}
