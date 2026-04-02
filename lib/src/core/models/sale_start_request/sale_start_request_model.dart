import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_start_request_model.freezed.dart';
part 'sale_start_request_model.g.dart';

/// Model with the data required to start or update a sale on the terminal display.
///
/// Fields:
/// - [customerDocument]: Customer CPF/CNPJ (optional).
/// - [customerName]: Customer name shown on the display.
/// - [sellerName]: Seller name shown on the display.
/// - [additionalInfo]: Supplementary information shown on the display.
/// - [discount]: Sale-level discount applied to the total (optional).
/// - [addition]: Sale-level surcharge applied to the total (optional).
///
/// Note: [discount] and [addition] operate at the sale level and affect the
/// final total. Item-level discount and addition (on [SaleItemModel]) are
/// visual only and do not affect the sale total.
@freezed
abstract class SaleStartRequestModel with _$SaleStartRequestModel {
  const factory SaleStartRequestModel({
    String? customerDocument,
    String? customerName,
    String? sellerName,
    String? additionalInfo,
    double? discount,
    double? addition,
  }) = _SaleStartRequestModel;

  factory SaleStartRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleStartRequestModelFromJson(json);
}
