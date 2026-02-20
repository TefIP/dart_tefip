import 'package:meta/meta.dart';

/// Internal container for SDK-wide constant string values.
///
/// This class centralizes default configuration values
/// and string literals used across the TefIP SDK,
/// preventing duplication and improving maintainability.
///
/// All fields are immutable and compile-time constants.
///
/// Intended for internal use only.
@internal
@immutable
abstract final class TefIPStrings {
  /// Default base URL used when no custom base URL is provided.
  ///
  /// This typically points to a local TefIP service instance.
  ///
  /// Example:
  /// ```dart
  /// TefIP.baseUrl = TefIPStrings.defaultBaseUrl;
  /// ```
  static const defaultBaseUrl = 'http://localhost:9050';
}