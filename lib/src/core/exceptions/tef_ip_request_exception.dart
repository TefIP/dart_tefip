/// Exception thrown when an HTTP request to the TefIP API fails.
///
/// This exception encapsulates:
/// - A human-readable error [message].
/// - The HTTP [statusCode] returned by the API.
/// - The optional [rawBody] of the response for debugging purposes.
///
/// It is typically thrown when the API responds with a non-success
/// HTTP status code or when an unexpected error occurs during
/// request processing.
class TefIPRequestException implements Exception {
  /// Error message describing the failure.
  final String message;

  /// HTTP status code returned by the API.
  final int statusCode;

  /// Optional raw response body returned by the API.
  ///
  /// Useful for debugging or logging purposes.
  final String? rawBody;

  /// Creates a new [TefIPRequestException].
  const TefIPRequestException({
    required this.message,
    required this.statusCode,
    this.rawBody,
  });
}