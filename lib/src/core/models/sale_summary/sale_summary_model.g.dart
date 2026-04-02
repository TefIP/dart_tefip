// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleSummaryModel _$SaleSummaryModelFromJson(Map<String, dynamic> json) =>
    _SaleSummaryModel(
      subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0.0,
      surcharge: (json['surcharge'] as num?)?.toDouble() ?? 0.0,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      itemDiscount: (json['itemDiscount'] as num?)?.toDouble() ?? 0.0,
      itemAddition: (json['itemAddition'] as num?)?.toDouble() ?? 0.0,
      total: (json['total'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$SaleSummaryModelToJson(_SaleSummaryModel instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'surcharge': instance.surcharge,
      'discount': instance.discount,
      'itemDiscount': instance.itemDiscount,
      'itemAddition': instance.itemAddition,
      'total': instance.total,
    };
