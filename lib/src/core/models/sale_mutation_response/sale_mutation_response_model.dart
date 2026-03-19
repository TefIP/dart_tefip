import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_mutation_response_model.freezed.dart';
part 'sale_mutation_response_model.g.dart';

/// Response model returned after a sale item or payment mutation (add/update/remove).
///
/// Fields:
/// - [message]: API response message.
/// - [itemId]: Identifier of the affected item (when applicable).
/// - [paymentId]: Identifier of the affected payment (when applicable).
@freezed
abstract class SaleMutationResponseModel with _$SaleMutationResponseModel {
  const factory SaleMutationResponseModel({
    required String message,
    String? itemId,
    String? paymentId,
  }) = _SaleMutationResponseModel;

  factory SaleMutationResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleMutationResponseModelFromJson(json);
}
