import 'package:freezed_annotation/freezed_annotation.dart';

import '../sale_addition/sale_addition_model.dart';
import '../sale_discount/sale_discount_model.dart';
import '../sale_item/sale_item_model.dart';
import '../sale_payment/sale_payment_model.dart';
import '../sale_start_request/sale_start_request_model.dart';
import '../sale_summary/sale_summary_model.dart';

part 'sale_coupon_model.freezed.dart';
part 'sale_coupon_model.g.dart';

/// Snapshot of the current active sale returned by `GET /sale`.
///
/// Fields:
/// - [sale]: Sale metadata (customer, seller info).
/// - [items]: Items currently added to the sale.
/// - [payments]: Payments currently added to the sale.
/// - [discounts]: Discount coupons applied to the sale.
/// - [additions]: Surcharge additions applied to the sale.
/// - [summary]: Computed totals (subtotal, discount, surcharge, total).
@freezed
abstract class SaleCouponModel with _$SaleCouponModel {
  const factory SaleCouponModel({
    required SaleStartRequestModel sale,
    @Default([]) List<SaleItemModel> items,
    @Default([]) List<SalePaymentModel> payments,
    @Default([]) List<SaleDiscountModel> discounts,
    @Default([]) List<SaleAdditionModel> additions,
    required SaleSummaryModel summary,
  }) = _SaleCouponModel;

  factory SaleCouponModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleCouponModelFromJson(json);
}
