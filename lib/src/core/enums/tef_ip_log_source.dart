import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the available log sources for TEF IP terminal operations.
///
/// This enum identifies the component or subsystem that generated a log entry.
///
/// Possible values:
/// - [app]: Application-level logs.
/// - [router]: Router and request routing logs.
/// - [http]: HTTP client/server communication logs.
enum TefIPLogSource {
  /// Application-level logs.
  @JsonValue('app')
  app,

  /// Router and request routing logs.
  @JsonValue('router')
  router,

  /// HTTP client/server communication logs.
  @JsonValue('http')
  http,
}
