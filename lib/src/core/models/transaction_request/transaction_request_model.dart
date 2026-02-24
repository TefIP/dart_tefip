import 'package:dart_tefip/src/core/converters/tef_ip_details_converter.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_installment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request_model.freezed.dart';
part 'transaction_request_model.g.dart';

@freezed
/// Request model responsible for initiating a financial transaction.
///
/// This model is serialized to JSON and sent to the transaction endpoint
/// to start a payment operation on the terminal.
///
/// Fields:
/// - [referenceId]: Optional external identifier used for reconciliation.
/// - [type]: Transaction type (sale, reversal, etc.).
///   Default: `TefIPTransactionType.unknown`.
/// - [amount]: Transaction amount.
///   Default: `0`.
/// - [installments]: Number of installments.
///   Default: `1`.
/// - [installmentType]: Installment modality (single, merchant, issuer).
///   Default: `TefIPInstallmentType.single`.
/// - [details]: Additional structured transaction metadata.
///   Uses [TefIPDetailsConverter] for serialization.
///
/// Factories:
/// - `empty()`: Returns a default initialized instance.
/// - `fromJson`: Creates an instance from a JSON map.
///
/// Generated:
/// - `toJson` method via Freezed/JsonSerializable.
abstract class TransactionRequestModel with _$TransactionRequestModel {
  const factory TransactionRequestModel({
    @Default(null) String? referenceId,
    @Default(TefIPTransactionType.unknown) TefIPTransactionType type,
    @Default(0) double amount,
    @Default(1) int installments,
    @Default(TefIPInstallmentType.single) TefIPInstallmentType installmentType,
    @TefIPDetailsConverter() Map<String, dynamic>? details,
  }) = _TransactionRequestModel;

  factory TransactionRequestModel.empty() => const TransactionRequestModel(
    referenceId: '',
    type: TefIPTransactionType.unknown,
    amount: 0,
    installments: 1,
  );

  factory TransactionRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$TransactionRequestModelFromJson(json);
}
