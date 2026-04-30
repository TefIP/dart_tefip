import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the available log levels for TEF IP terminal operations.
///
/// This enum controls the verbosity and type of logging output
/// from the terminal backend.
///
/// Possible values:
/// - [fatal]: Critical errors that may cause system failure.
/// - [error]: Error conditions requiring immediate attention.
/// - [warning]: Warnings indicating potential issues.
/// - [info]: Informational messages about normal operations.
/// - [trace]: Detailed trace information for debugging.
/// - [path]: Path execution information.
/// - [debug]: Debug-level diagnostic information.
enum TefIPLogLevel {
  /// Critical errors that may cause system failure.
  @JsonValue('fatal')
  fatal,

  /// Error conditions requiring immediate attention.
  @JsonValue('error')
  error,

  /// Warnings indicating potential issues.
  @JsonValue('warning')
  warning,

  /// Informational messages about normal operations.
  @JsonValue('info')
  info,

  /// Detailed trace information for debugging.
  @JsonValue('trace')
  trace,

  /// Path execution information.
  @JsonValue('path')
  path,

  /// Debug-level diagnostic information.
  @JsonValue('debug')
  debug,
}
