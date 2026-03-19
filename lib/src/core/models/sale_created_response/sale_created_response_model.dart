import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_created_response_model.freezed.dart';
part 'sale_created_response_model.g.dart';

/// Response model returned after a sale is successfully created.
///
/// Fields:
/// - [message]: API response message.
/// - [saleId]: Identifier of the sale created on the terminal.
@freezed
abstract class SaleCreatedResponseModel with _$SaleCreatedResponseModel {
  const factory SaleCreatedResponseModel({
    required String message,
    String? saleId,
  }) = _SaleCreatedResponseModel;

  factory SaleCreatedResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleCreatedResponseModelFromJson(json);
}
