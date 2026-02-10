import 'package:dart_tefip/src/core/enums/tef_ip_installment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request_model.freezed.dart';
part 'transaction_request_model.g.dart';

@freezed
abstract class TransactionRequestModel with _$TransactionRequestModel {
  const factory TransactionRequestModel({
    @Default(null) String? referenceId,
    @Default(TefIPTransactionType.unknown) TefIPTransactionType type,
    @Default(0) double amount,
    @Default(1) int installments,
    @Default(TefIPInstallmentType.single) TefIPInstallmentType installmentType,
    Map<String, dynamic>? details,
  }) = _TransactionRequestModel;

  factory TransactionRequestModel.empty() => const TransactionRequestModel(
    referenceId: '',
    type: TefIPTransactionType.unknown,
    amount: 0,
    installments: 1,
  );

  factory TransactionRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestModelFromJson(json);
}
