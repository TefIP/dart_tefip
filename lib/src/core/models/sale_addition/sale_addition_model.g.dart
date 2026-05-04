// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_addition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleAdditionModel _$SaleAdditionModelFromJson(Map<String, dynamic> json) =>
    _SaleAdditionModel(
      id: json['id'] as String,
      description: json['description'] as String?,
      value: json['value'] as num,
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$SaleAdditionModelToJson(_SaleAdditionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'value': instance.value,
      'additionalInfo': instance.additionalInfo,
    };
