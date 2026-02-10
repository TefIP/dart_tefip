// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionResponseModel _$TransactionResponseModelFromJson(
  Map<String, dynamic> json,
) => _TransactionResponseModel(
  nsu: json['nsu'] as String? ?? null,
  message: json['message'] as String? ?? null,
  details: json['details'] as Map<String, dynamic>? ?? null,
);

Map<String, dynamic> _$TransactionResponseModelToJson(
  _TransactionResponseModel instance,
) => <String, dynamic>{
  'nsu': instance.nsu,
  'message': instance.message,
  'details': instance.details,
};
