// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionRequestModel _$TransactionRequestModelFromJson(
  Map<String, dynamic> json,
) => _TransactionRequestModel(
  referenceId: json['referenceId'] as String? ?? null,
  type:
      $enumDecodeNullable(_$TefIPTransactionTypeEnumMap, json['type']) ??
      TefIPTransactionType.unknown,
  amount: (json['amount'] as num?)?.toDouble() ?? 0,
  installments: (json['installments'] as num?)?.toInt() ?? 1,
  installmentType:
      $enumDecodeNullable(
        _$TefIPInstallmentTypeEnumMap,
        json['installmentType'],
      ) ??
      TefIPInstallmentType.single,
  details: const TefIPDetailsConverter().fromJson(json['details']),
);

Map<String, dynamic> _$TransactionRequestModelToJson(
  _TransactionRequestModel instance,
) => <String, dynamic>{
  'referenceId': instance.referenceId,
  'type': _$TefIPTransactionTypeEnumMap[instance.type]!,
  'amount': instance.amount,
  'installments': instance.installments,
  'installmentType': _$TefIPInstallmentTypeEnumMap[instance.installmentType]!,
  'details': const TefIPDetailsConverter().toJson(instance.details),
};

const _$TefIPTransactionTypeEnumMap = {
  TefIPTransactionType.credit: 'CC',
  TefIPTransactionType.debit: 'CD',
  TefIPTransactionType.pix: 'PX',
  TefIPTransactionType.unknown: 'XX',
};

const _$TefIPInstallmentTypeEnumMap = {
  TefIPInstallmentType.single: 'single',
  TefIPInstallmentType.seller: 'seller',
  TefIPInstallmentType.buyer: 'buyer',
};
