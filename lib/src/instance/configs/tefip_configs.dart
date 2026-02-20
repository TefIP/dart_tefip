import 'package:dart_tefip/src/core/constants/tef_ip_strings.dart';
import 'package:meta/meta.dart';

/// Internal configuration holder for the TefIP SDK.
///
/// Stores global configuration used by the networking layer,
/// including request timeout and base URL.
///
/// Intended for internal use only.
@immutable
@internal
abstract class TefIPConfigs {
  /// Default timeout applied to HTTP requests.
  static final defaultRequestsTimeOut =
      Duration(minutes: 1, seconds: 30);

  /// Current timeout used for requests.
  ///
  /// Can be overridden before performing API calls.
  static Duration requestsTimeOut = defaultRequestsTimeOut;

  static String? _baseUrl;

  /// Sets the base URL for API requests.
  @internal
  static set baseUrl(String? baseUrl) {
    _baseUrl = baseUrl;
  }

  /// Returns the configured base URL.
  ///
  /// Falls back to [TefIPStrings.defaultBaseUrl]
  /// if no custom value was provided.
  @internal
  static String get baseUrl {
    return _baseUrl ?? TefIPStrings.defaultBaseUrl;
  }
}