// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_start_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleStartRequestModel _$SaleStartRequestModelFromJson(
  Map<String, dynamic> json,
) => _SaleStartRequestModel(
  customerDocument: json['customerDocument'] as String?,
  customerName: json['customerName'] as String?,
  sellerName: json['sellerName'] as String?,
  additionalInfo: json['additionalInfo'] as String?,
);

Map<String, dynamic> _$SaleStartRequestModelToJson(
  _SaleStartRequestModel instance,
) => <String, dynamic>{
  'customerDocument': instance.customerDocument,
  'customerName': instance.customerName,
  'sellerName': instance.sellerName,
  'additionalInfo': instance.additionalInfo,
};
