// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalePaymentModel _$SalePaymentModelFromJson(Map<String, dynamic> json) =>
    _SalePaymentModel(
      id: json['id'] as String?,
      type:
          $enumDecodeNullable(_$TefIPSalePaymentTypeEnumMap, json['tPag']) ??
          TefIPSalePaymentType.unknown,
      description: json['description'] as String?,
      value: (json['value'] as num).toDouble(),
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$SalePaymentModelToJson(_SalePaymentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tPag': _$TefIPSalePaymentTypeEnumMap[instance.type]!,
      'description': instance.description,
      'value': instance.value,
      'additionalInfo': instance.additionalInfo,
    };

const _$TefIPSalePaymentTypeEnumMap = {
  TefIPSalePaymentType.credit: 'credit',
  TefIPSalePaymentType.debit: 'debit',
  TefIPSalePaymentType.pix: 'pix',
  TefIPSalePaymentType.money: 'money',
  TefIPSalePaymentType.voucher: 'voucher',
  TefIPSalePaymentType.gift: 'gift',
  TefIPSalePaymentType.veroWallet: 'veroWallet',
  TefIPSalePaymentType.unknown: 'unknown',
  TefIPSalePaymentType.adm: 'adm',
  TefIPSalePaymentType.cancel: 'cancel',
  TefIPSalePaymentType.cancelDigitalWallet: 'cancelDigitalWallet',
};
