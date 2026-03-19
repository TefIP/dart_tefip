// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleItemModel _$SaleItemModelFromJson(Map<String, dynamic> json) =>
    _SaleItemModel(
      id: json['id'] as String,
      code: json['code'] as String,
      description: json['description'] as String,
      canceled: json['canceled'] as bool? ?? false,
      quantity: (json['quantity'] as num).toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      addition: (json['addition'] as num?)?.toDouble(),
      total: (json['total'] as num).toDouble(),
      additionalInfo: json['additionalInfo'] as String?,
    );

Map<String, dynamic> _$SaleItemModelToJson(_SaleItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'canceled': instance.canceled,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'discount': instance.discount,
      'addition': instance.addition,
      'total': instance.total,
      'additionalInfo': instance.additionalInfo,
    };
