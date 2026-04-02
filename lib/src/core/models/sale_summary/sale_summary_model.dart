import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_summary_model.freezed.dart';
part 'sale_summary_model.g.dart';

/// Computed totals for the current sale session.
///
/// Returned as part of [SaleCouponModel] from `GET /sale`.
///
/// Fields:
/// - [subtotal]: Sum of all item totals before discounts or additions.
/// - [surcharge]: Sale-level surcharge (addition).
/// - [discount]: Sale-level discount.
/// - [itemDiscount]: Aggregate of all visual item-level discounts (display only).
/// - [itemAddition]: Aggregate of all visual item-level additions (display only).
/// - [total]: Final payable total after sale-level discount and surcharge.
@freezed
abstract class SaleSummaryModel with _$SaleSummaryModel {
  const factory SaleSummaryModel({
    @Default(0.0) double subtotal,
    @Default(0.0) double surcharge,
    @Default(0.0) double discount,
    @Default(0.0) double itemDiscount,
    @Default(0.0) double itemAddition,
    @Default(0.0) double total,
  }) = _SaleSummaryModel;

  factory SaleSummaryModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleSummaryModelFromJson(json);
}
