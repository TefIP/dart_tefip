// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_created_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleCreatedResponseModel _$SaleCreatedResponseModelFromJson(
  Map<String, dynamic> json,
) => _SaleCreatedResponseModel(
  message: json['message'] as String,
  saleId: json['saleId'] as String?,
);

Map<String, dynamic> _$SaleCreatedResponseModelToJson(
  _SaleCreatedResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'saleId': instance.saleId};
