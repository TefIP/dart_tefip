// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleDiscountModel _$SaleDiscountModelFromJson(Map<String, dynamic> json) =>
    _SaleDiscountModel(
      id: json['id'] as String,
      description: json['description'] as String?,
      value: json['value'] as num,
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$SaleDiscountModelToJson(_SaleDiscountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'value': instance.value,
      'additionalInfo': instance.additionalInfo,
    };
