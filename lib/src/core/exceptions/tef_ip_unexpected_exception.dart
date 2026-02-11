class TefIPUnexpectedException implements Exception {
  final Object? exception;

  const TefIPUnexpectedException({required this.exception});

  @override
  String toString() => 'TefIPUnexpectedException(exception: $exception)';
}
