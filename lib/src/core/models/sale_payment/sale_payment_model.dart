import 'package:dart_tefip/src/core/enums/tef_ip_sale_payment_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_payment_model.freezed.dart';
part 'sale_payment_model.g.dart';

/// Represents a payment entry added to a sale on the terminal display.
///
/// Fields:
/// - [id]: External payment identifier.
/// - [type]: Payment type (`tPag`). Default: [TefIPSalePaymentType.unknown].
/// - [description]: Payment description shown on the display.
/// - [value]: Payment amount.
/// - [additionalInfo]: Supplementary information (optional).
@freezed
abstract class SalePaymentModel with _$SalePaymentModel {
  const factory SalePaymentModel({
    required String id,
    @JsonKey(name: 'tPag')
    @Default(TefIPSalePaymentType.unknown)
    TefIPSalePaymentType type,
    String? description,
    required double value,
    String? additionalInfo,
  }) = _SalePaymentModel;

  factory SalePaymentModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SalePaymentModelFromJson(json);
}
