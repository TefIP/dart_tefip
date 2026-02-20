import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the supported transaction types recognized by the TefIP API.
///
/// Each enum value is mapped to its corresponding API representation
/// using [JsonValue], ensuring consistent serialization and deserialization.
///
/// Possible values:
/// - [credit]: Credit card transaction (`CC`).
/// - [debit]: Debit card transaction (`CD`).
/// - [pix]: PIX transaction (`PX`).
/// - [unknown]: Fallback value when the transaction type is not recognized (`XX`).
enum TefIPTransactionType {
  /// Credit card transaction.
  @JsonValue('CC')
  credit,

  /// Debit card transaction.
  @JsonValue('CD')
  debit,

  /// PIX transaction.
  @JsonValue('PX')
  pix,

  /// Unknown or unsupported transaction type.
  @JsonValue('XX')
  unknown,
}