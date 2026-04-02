// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SaleCouponModel _$SaleCouponModelFromJson(Map<String, dynamic> json) =>
    _SaleCouponModel(
      sale:
          SaleStartRequestModel.fromJson(json['sale'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => SaleItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      payments: (json['payments'] as List<dynamic>?)
              ?.map((e) => SalePaymentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      summary:
          SaleSummaryModel.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaleCouponModelToJson(_SaleCouponModel instance) =>
    <String, dynamic>{
      'sale': instance.sale.toJson(),
      'items': instance.items.map((e) => e.toJson()).toList(),
      'payments': instance.payments.map((e) => e.toJson()).toList(),
      'summary': instance.summary.toJson(),
    };
