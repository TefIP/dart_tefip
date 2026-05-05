import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_discount_model.freezed.dart';
part 'sale_discount_model.g.dart';

/// Model representing a discount coupon applied to a sale.
///
/// Fields:
/// - [id]: External discount identifier.
/// - [description]: Label shown on the terminal display (optional).
/// - [value]: Discount amount.
/// - [additionalInfo]: Supplementary information (optional).
@freezed
abstract class SaleDiscountModel with _$SaleDiscountModel {
  const factory SaleDiscountModel({
    required String id,
    String? description,
    required num value,
    String? additionalInfo,
  }) = _SaleDiscountModel;

  factory SaleDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$SaleDiscountModelFromJson(json);
}
