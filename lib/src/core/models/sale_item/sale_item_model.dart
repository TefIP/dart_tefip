import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_item_model.freezed.dart';
part 'sale_item_model.g.dart';

/// Represents a product item added to a sale on the terminal display.
///
/// Fields:
/// - [id]: External item identifier.
/// - [code]: Product code (e.g., EAN/barcode).
/// - [description]: Description shown on the display.
/// - [canceled]: Whether the item has been canceled. Default: `false`.
/// - [quantity]: Item quantity.
/// - [unitPrice]: Unit price of the item.
/// - [discount]: Discount applied to the item (optional).
/// - [addition]: Surcharge applied to the item (optional).
/// - [total]: Total value of the item.
/// - [additionalInfo]: Supplementary information (optional).
@freezed
abstract class SaleItemModel with _$SaleItemModel {
  const factory SaleItemModel({
    required String id,
    required String code,
    required String description,
    @Default(false) bool canceled,
    required double quantity,
    required double unitPrice,
    double? discount,
    double? addition,
    required double total,
    String? additionalInfo,
  }) = _SaleItemModel;

  factory SaleItemModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleItemModelFromJson(json);
}
