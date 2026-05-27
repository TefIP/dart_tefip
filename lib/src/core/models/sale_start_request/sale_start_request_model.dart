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
/// - [total]: Optional total amount to display on the sale screen.
@freezed
abstract class SaleStartRequestModel with _$SaleStartRequestModel {
  const factory SaleStartRequestModel({
    String? customerDocument,
    String? customerName,
    String? sellerName,
    String? additionalInfo,
    num? total,
  }) = _SaleStartRequestModel;

  factory SaleStartRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleStartRequestModelFromJson(json);
}
