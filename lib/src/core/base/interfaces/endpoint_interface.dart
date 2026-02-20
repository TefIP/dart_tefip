import 'package:meta/meta.dart';

/// Defines the contract for static endpoint definitions.
///
/// This interface is used internally to standardize how
/// fixed (non-parameterized) endpoint paths are exposed
/// across the SDK.
///
/// Implementations must provide a constant [endpoint]
/// string representing the full API route.
///
/// This abstraction ensures consistency and enforces
/// a clear structure for endpoint declarations.
///
/// This interface is intended for internal use only.
@internal
abstract class EndpointInterface {
  /// Returns the fixed endpoint path.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// String get endpoint => "/status";
  /// ```
  String get endpoint;
}