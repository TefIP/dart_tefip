// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionResponseModel _$TransactionResponseModelFromJson(
  Map<String, dynamic> json,
) => _TransactionResponseModel(
  nsu: json['nsu'] as String? ?? null,
  cnpj: json['cnpj'] as String? ?? null,
  txid: json['txid'] as String? ?? null,
  cAut: json['cAut'] as String? ?? null,
  tBand: json['tBand'] as String? ?? null,
  tPag: json['tPag'] as String? ?? null,
  message: json['message'] as String? ?? null,
  details: json['details'] as Map<String, dynamic>? ?? null,
);

Map<String, dynamic> _$TransactionResponseModelToJson(
  _TransactionResponseModel instance,
) => <String, dynamic>{
  'nsu': instance.nsu,
  'cnpj': instance.cnpj,
  'txid': instance.txid,
  'cAut': instance.cAut,
  'tBand': instance.tBand,
  'tPag': instance.tPag,
  'message': instance.message,
  'details': instance.details,
};
