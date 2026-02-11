// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    _TransactionModel(
      referenceId: json['referenceId'] as String?,
      type: json['type'] == null
          ? TefIPTransactionType.unknown
          : const TefIPTransactionTypeConverter().fromJson(
              json['type'] as String,
            ),
      transactionStatus:
          $enumDecodeNullable(
            _$TefIPTransactionStatusEnumMap,
            json['transactionStatus'],
          ) ??
          TefIPTransactionStatus.unknown,
      installmentType:
          $enumDecodeNullable(
            _$TefIPInstallmentTypeEnumMap,
            json['installmentType'],
          ) ??
          TefIPInstallmentType.single,
      amount: (json['amount'] as num?)?.toDouble() ?? 0.0,
      installments: (json['installments'] as num?)?.toInt() ?? 1,
      nsu: json['nsu'] as String?,
      createdAt: const TefIPUnixDateTimeConverter().fromJson(
        (json['createdAt'] as num?)?.toInt(),
      ),
      updatedAt: const TefIPUnixDateTimeConverter().fromJson(
        (json['updatedAt'] as num?)?.toInt(),
      ),
      paymentDetails: const TefIPDetailsConverter().fromJson(
        json['paymentDetails'],
      ),
      reversalDetails: const TefIPDetailsConverter().fromJson(
        json['reversalDetails'],
      ),
    );

Map<String, dynamic> _$TransactionModelToJson(
  _TransactionModel instance,
) => <String, dynamic>{
  'referenceId': instance.referenceId,
  'type': const TefIPTransactionTypeConverter().toJson(instance.type),
  'transactionStatus':
      _$TefIPTransactionStatusEnumMap[instance.transactionStatus]!,
  'installmentType': _$TefIPInstallmentTypeEnumMap[instance.installmentType]!,
  'amount': instance.amount,
  'installments': instance.installments,
  'nsu': instance.nsu,
  'createdAt': const TefIPUnixDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const TefIPUnixDateTimeConverter().toJson(instance.updatedAt),
  'paymentDetails': const TefIPDetailsConverter().toJson(
    instance.paymentDetails,
  ),
  'reversalDetails': const TefIPDetailsConverter().toJson(
    instance.reversalDetails,
  ),
};

const _$TefIPTransactionStatusEnumMap = {
  TefIPTransactionStatus.pending: 'pending',
  TefIPTransactionStatus.paid: 'paid',
  TefIPTransactionStatus.cancelled: 'cancelled',
  TefIPTransactionStatus.unknown: 'unknown',
};

const _$TefIPInstallmentTypeEnumMap = {
  TefIPInstallmentType.single: 'single',
  TefIPInstallmentType.seller: 'seller',
  TefIPInstallmentType.buyer: 'buyer',
};
