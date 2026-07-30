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
  TefIPSalePaymentType.money: '01',
  TefIPSalePaymentType.credit: '03',
  TefIPSalePaymentType.debit: '04',
  TefIPSalePaymentType.gift: '05',
  TefIPSalePaymentType.pix: '17',
  TefIPSalePaymentType.veroWallet: '17',
  TefIPSalePaymentType.unknown: '99',
  TefIPSalePaymentType.voucher: '99',
  TefIPSalePaymentType.adm: '99',
  TefIPSalePaymentType.cancel: '99',
  TefIPSalePaymentType.cancelDigitalWallet: '99',
};
