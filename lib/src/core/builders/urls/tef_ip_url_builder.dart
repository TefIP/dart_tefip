import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:meta/meta.dart';

/// Internal utility responsible for building full request URLs.
///
/// This class centralizes the logic for composing the final
/// URL used in HTTP requests by combining:
/// - The configured base URL.
/// - The endpoint path.
/// - An optional path parameter.
/// - Optional query parameters.
///
/// The base URL is retrieved from [TefIPConfigs.baseUrl].
///
/// This abstraction guarantees consistent URL construction
/// across all endpoint implementations.
///
/// Intended for internal use only.
@immutable
@internal
abstract class TefIpUrlBuilder {
  /// Builds the full URL for a request.
  ///
  /// If [param] is provided, it is appended as a path segment.
  /// Otherwise, only the base URL and endpoint are combined.
  ///
  /// If [queryParams] is provided, they are appended as query parameters.
  ///
  /// Example without parameter:
  /// ```dart
  /// final url = TefIpUrlBuilder.build("/status");
  /// ```
  ///
  /// Example with path parameter:
  /// ```dart
  /// final url = TefIpUrlBuilder.build("/transaction", param: "123");
  /// ```
  ///
  /// Example with query parameters:
  /// ```dart
  /// final url = TefIpUrlBuilder.build("/sale", queryParams: {"limit": "10", "offset": "0"});
  /// ```
  @internal
  static String build(
    String endpoint, {
    String? param,
    Map<String, String>? queryParams,
  }) {
    final baseUrl = TefIPConfigs.baseUrl;

    final String path = param == null
        ? '$baseUrl$endpoint'
        : '$baseUrl$endpoint/$param';

    if (queryParams == null || queryParams.isEmpty) return path;
    return Uri.parse(path).replace(queryParameters: queryParams).toString();
  }
}
