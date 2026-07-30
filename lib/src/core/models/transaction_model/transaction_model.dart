import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_details_converter.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_transaction_type_converter.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_unix_datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
/// Model representing a financial transaction processed by the terminal.
///
/// This model encapsulates transaction metadata, monetary data,
/// lifecycle timestamps and detailed payment/reversal information.
///
/// Fields:
/// - [referenceId]: External reference identifier for reconciliation.
/// - [type]: Transaction type (sale, reversal, etc.).
///   Uses [TefIPTransactionTypeConverter].
///   Default: `TefIPTransactionType.unknown`.
/// - [transactionStatus]: Current transaction status.
///   Default: `TefIPTransactionStatus.unknown`.
/// - [installmentType]: Installment modality (single, merchant, issuer).
///   Default: `TefIPInstallmentType.single`.
/// - [amount]: Transaction amount.
///   Default: `0.0`.
/// - [installments]: Number of installments.
///   Default: `1`.
/// - [nsu]: Unique sequential number returned by the acquirer.
/// - [cnpj]: CNPJ of the acquirer/card issuer returned by the terminal.
/// - [cAut]: Authorization code returned by the acquirer.
///   Present for credit/debit transactions.
///   Null when [type] is [TefIPTransactionType.pix].
/// - [tBand]: Card brand/flag returned by the acquirer (e.g. Visa, Master).
/// - [tPag]: Payment type code string returned by the acquirer.
/// - [txid]: PIX transaction ID returned by the acquirer.
///   Only present when [type] is [TefIPTransactionType.pix]; null for other types.
/// - [acquirer]: Name of the acquirer that processed the transaction.
/// - [createdAt]: Creation timestamp.
///   Uses [TefIPUnixDateTimeConverter] (Unix → DateTime).
/// - [updatedAt]: Last update timestamp.
///   Uses [TefIPUnixDateTimeConverter].
/// - [paymentDetails]: Structured payment metadata.
///   Uses [TefIPDetailsConverter].
/// - [reversalDetails]: Structured reversal metadata.
///   Uses [TefIPDetailsConverter].
///
/// Generated:
/// - `fromJson` factory for deserialization.
/// - `toJson` method via Freezed/JsonSerializable.
abstract class TransactionModel with _$TransactionModel {
  const factory TransactionModel({
    String? referenceId,
    @TefIPTransactionTypeConverter()
    @Default(TefIPTransactionType.unknown)
    TefIPTransactionType type,
    @Default(TefIPTransactionStatus.unknown)
    TefIPTransactionStatus transactionStatus,
    @Default(TefIPInstallmentType.single) TefIPInstallmentType installmentType,
    @Default(0.0) double amount,
    @Default(1) int installments,
    String? nsu,
    String? cnpj,
    String? cAut,
    String? tBand,
    String? tPag,
    String? txid,
    String? acquirer,

    @TefIPUnixDateTimeConverter() DateTime? createdAt,
    @TefIPUnixDateTimeConverter() DateTime? updatedAt,
    @TefIPDetailsConverter() Map<String, dynamic>? paymentDetails,
    @TefIPDetailsConverter() Map<String, dynamic>? reversalDetails,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(
    Map<String, dynamic> json,
  ) => _$TransactionModelFromJson(json);
}
