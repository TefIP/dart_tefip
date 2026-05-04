import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_addition_model.freezed.dart';
part 'sale_addition_model.g.dart';

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
