import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the supported payment types for a sale recognized by the TEF IP API.
///
/// [tPag] holds the wire value: numeric codes for credit/debit/pix (matching
/// the acquirer's tPag spec), string names for the remaining types.
enum TefIPSalePaymentType {
  /// Cash payment.
  @JsonValue('01')
  money('01'),

  /// Credit card payment.
  @JsonValue('03')
  credit('03'),

  /// Debit card payment.
  @JsonValue('04')
  debit('04'),

  /// Gift card payment.
  @JsonValue('05')
  gift('05'),

  /// Vero digital wallet payment.
  @JsonValue('17')
  veroWallet('17'),

  /// PIX instant payment.
  @JsonValue('17')
  pix('17'),

  /// Unknown payment type (fallback).
  @JsonValue('99')
  unknown('99'),

  /// Voucher/ticket payment.
  @JsonValue('99')
  voucher('99'),

  /// Administrative operation.
  @JsonValue('99')
  adm('99'),

  /// Payment cancellation.
  @JsonValue('99')
  cancel('99'),

  /// Digital wallet payment cancellation.
  @JsonValue('99')
  cancelDigitalWallet('99');

  /// The wire value sent/received in JSON as `tPag`.
  final String tPag;

  const TefIPSalePaymentType(this.tPag);

  /// Returns the [TefIPSalePaymentType] matching [value].
  ///
  /// Matches against [tPag] (numeric codes or string names) and also
  /// against the Dart enum [name] so that both `'03'` and `'credit'`
  /// resolve to [TefIPSalePaymentType.credit].
  ///
  /// Returns [TefIPSalePaymentType.unknown] for unrecognized values.
  static TefIPSalePaymentType fromTPag(String value) {
    return TefIPSalePaymentType.values.firstWhere(
      (type) => type.tPag == value || type.name == value,
      orElse: () => TefIPSalePaymentType.unknown,
    );
  }
}
