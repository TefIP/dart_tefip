import 'package:meta/meta.dart';

/// Defines the contract for endpoint parameter builders.
///
/// This interface is used internally to standardize how dynamic
/// endpoint paths are generated across the SDK.
///
/// Implementations must provide an [endpoint] getter that returns
/// a function responsible for building the final endpoint string
/// based on an optional parameter.
///
/// The function receives a nullable [String] parameter and must
/// return the complete endpoint path as a [String].
///
/// This abstraction allows endpoints that require path parameters
/// (e.g., `/transaction/{id}`) to generate their routes consistently.
///
/// This interface is intended for internal use only.
@internal
abstract class EndpointParamInterface {
  /// Returns a function that builds the endpoint path.
  ///
  /// The provided parameter may be `null`, depending on whether
  /// the endpoint requires a path segment.
  ///
  /// Example expected behavior:
  /// ```dart
  /// @override
  /// String Function(String?) get endpoint =>
  ///     (id) => "/transaction/$id";
  /// ```
  String Function(String?) get endpoint;
}