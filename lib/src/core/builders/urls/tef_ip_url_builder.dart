import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:meta/meta.dart';

/// Internal utility responsible for building full request URLs.
///
/// This class centralizes the logic for composing the final
/// URL used in HTTP requests by combining:
/// - The configured base URL.
/// - The endpoint path.
/// - An optional path parameter.
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
  /// Example without parameter:
  /// ```dart
  /// final url = TefIpUrlBuilder.build("/status");
  /// ```
  ///
  /// Example with parameter:
  /// ```dart
  /// final url = TefIpUrlBuilder.build("/transaction", param: "123");
  /// ```
  @internal
  static String build(String endpoint, {String? param}) {
    final baseUrl = TefIPConfigs.baseUrl;

    if (param == null) return '$baseUrl$endpoint';
    return '$baseUrl$endpoint/$param';
  }
}