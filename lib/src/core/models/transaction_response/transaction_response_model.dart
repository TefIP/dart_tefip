import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_model.freezed.dart';
part 'transaction_response_model.g.dart';

@freezed
/// Model representing the response returned after a transaction request.
///
/// Contains transaction identifiers and optional additional metadata
/// returned by the terminal/acquirer.
///
/// Fields:
/// - [nsu]: Unique sequential number generated for the transaction.
/// - [cnpj]: CNPJ of the acquirer/card issuer returned by the terminal.
/// - [txid]: PIX transaction ID returned by the acquirer.
///   Only present when the transaction type is PIX; null for other types.
/// - [cAut]: Authorization code returned by the acquirer.
///   Present for credit/debit transactions.
///   Null for PIX transactions.
/// - [tBand]: Card brand/flag returned by the acquirer (e.g. Visa, Master).
/// - [tPag]: Payment type code string returned by the acquirer.
/// - [message]: Informational or status message related to the transaction.
/// - [details]: Additional structured response data.
///
/// Factories:
/// - `empty()`: Returns a default empty instance.
/// - `fromJson`: Creates an instance from a JSON map.
///
/// Generated:
/// - `toJson` method via Freezed/JsonSerializable.
abstract class TransactionResponseModel with _$TransactionResponseModel {
  const factory TransactionResponseModel({
    @Default(null) String? nsu,

    /// CNPJ of the acquirer/card issuer returned by the terminal.
    @Default(null) String? cnpj,

    /// PIX transaction ID returned by the acquirer.
    /// Only present when the transaction type is PIX; null for other types.
    @Default(null) String? txid,

    /// Authorization code returned by the acquirer.
    /// Present for credit/debit transactions.
    /// Null for PIX transactions.
    @Default(null) String? cAut,

    /// Card brand/flag returned by the acquirer (e.g. Visa, Master).
    @Default(null) String? tBand,

    /// Payment type code string returned by the acquirer.
    @Default(null) String? tPag,

    @Default(null) String? message,
    @Default(null) Map<String, dynamic>? details,
  }) = _TransactionResponseModel;

  factory TransactionResponseModel.empty() => const TransactionResponseModel();

  factory TransactionResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$TransactionResponseModelFromJson(json);
}
