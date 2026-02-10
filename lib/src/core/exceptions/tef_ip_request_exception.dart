class TefIPRequestException implements Exception {
  final String message;
  final int statusCode;
  final String? rawBody;

  const TefIPRequestException({
    required this.message,
    required this.statusCode,
    this.rawBody,
  });

  @override
  String toString() =>
      'TefIPRequestException(statusCode: $statusCode, message: $message)';
}
