/// Exception thrown when an unexpected error occurs
/// during request execution or response handling.
///
/// This exception wraps any non-HTTP-related failure,
/// such as runtime errors, parsing issues, or
/// unexpected internal exceptions.
///
/// It allows the SDK to standardize error propagation
/// while preserving the original [exception] object
/// for debugging or logging purposes.
class TefIPUnexpectedException implements Exception {
  /// The original exception that triggered this failure.
  final Object? exception;

  /// Creates a new [TefIPUnexpectedException].
  const TefIPUnexpectedException({required this.exception});

  /// Returns a concise textual representation of the exception.
  @override
  String toString() =>
      'TefIPUnexpectedException(exception: $exception)';
}