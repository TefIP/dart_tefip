import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_discount_model.freezed.dart';
part 'sale_discount_model.g.dart';

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
