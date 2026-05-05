import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_addition_model.freezed.dart';
part 'sale_addition_model.g.dart';

/// Model representing a surcharge applied to a sale.
///
/// Fields:
/// - [id]: External addition identifier.
/// - [description]: Label shown on the terminal display (optional).
/// - [value]: Surcharge amount.
/// - [additionalInfo]: Supplementary information (optional).
@freezed
abstract class SaleAdditionModel with _$SaleAdditionModel {
  const factory SaleAdditionModel({
    required String id,
    String? description,
    required num value,
    String? additionalInfo,
  }) = _SaleAdditionModel;

  factory SaleAdditionModel.fromJson(Map<String, dynamic> json) =>
      _$SaleAdditionModelFromJson(json);
}
