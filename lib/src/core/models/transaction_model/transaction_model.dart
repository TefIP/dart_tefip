import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_details_converter.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_transaction_type_converter.dart';
import 'package:dart_tefip/src/core/converters/tef_ip_unix_datetime_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';

@freezed
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
    @TefIPUnixDateTimeConverter() DateTime? createdAt,
    @TefIPUnixDateTimeConverter() DateTime? updatedAt,
    @TefIPDetailsConverter() Map<String, dynamic>? paymentDetails,
    @TefIPDetailsConverter() Map<String, dynamic>? reversalDetails,
  }) = _TransactionModel;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);
}
