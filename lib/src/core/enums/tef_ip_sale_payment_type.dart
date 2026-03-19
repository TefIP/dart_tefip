import 'package:freezed_annotation/freezed_annotation.dart';

/// Defines the supported payment types for a sale recognized by the TefIP API.
///
/// Each enum value is mapped to its corresponding API string representation
/// using [JsonValue].
enum TefIPSalePaymentType {
  /// Credit card payment.
  @JsonValue('credit')
  credit,

  /// Debit card payment.
  @JsonValue('debit')
  debit,

  /// PIX instant payment.
  @JsonValue('pix')
  pix,

  /// Cash payment.
  @JsonValue('money')
  money,

  /// Voucher/ticket payment.
  @JsonValue('voucher')
  voucher,

  /// Gift card payment.
  @JsonValue('gift')
  gift,

  /// Vero digital wallet payment.
  @JsonValue('veroWallet')
  veroWallet,

  /// Unknown payment type (fallback).
  @JsonValue('unknown')
  unknown,

  /// Administrative operation.
  @JsonValue('adm')
  adm,

  /// Payment cancellation.
  @JsonValue('cancel')
  cancel,

  /// Digital wallet payment cancellation.
  @JsonValue('cancelDigitalWallet')
  cancelDigitalWallet,
}
