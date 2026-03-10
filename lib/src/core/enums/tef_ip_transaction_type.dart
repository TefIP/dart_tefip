import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the supported transaction types recognized by the TefIP API.
///
/// Each enum value is mapped to its corresponding API representation
/// using [JsonValue], ensuring consistent serialization and deserialization.
///
/// Possible values:
/// - [credit]: Credit card transaction (`03`).
/// - [debit]: Debit card transaction (`04`).
/// - [pix]: PIX transaction (`17`).
/// - [unknown]: Fallback value when the transaction type is not recognized (`99`).
enum TefIPTransactionType {
  /// Credit card transaction.
  @JsonValue('03')
  credit,

  /// Debit card transaction.
  @JsonValue('04')
  debit,

  /// PIX transaction.
  @JsonValue('17')
  pix,

  /// Unknown or unsupported transaction type.
  @JsonValue('99')
  unknown,
}
