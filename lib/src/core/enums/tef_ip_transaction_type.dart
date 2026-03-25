import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the supported transaction types recognized by the TEF IP API.
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
  credit('03'),

  /// Debit card transaction.
  @JsonValue('04')
  debit('04'),

  /// PIX transaction.
  @JsonValue('17')
  pix('17'),

  /// Unknown or unsupported transaction type.
  @JsonValue('99')
  unknown('99');

  /// The TPag code associated with the transaction type.
  final String tPag;

  const TefIPTransactionType(this.tPag);

  /// Returns the [TefIPTransactionType] corresponding to the given [tPag] code.
  ///
  /// If the code is not recognized, [TefIPTransactionType.unknown] is returned.
  static TefIPTransactionType fromTPag(String tPag) {
    return TefIPTransactionType.values.firstWhere(
      (type) => type.tPag == tPag,
      orElse: () => TefIPTransactionType.unknown,
    );
  }
}
