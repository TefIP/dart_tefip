import 'package:freezed_annotation/freezed_annotation.dart';

part 'sale_action_request_model.freezed.dart';
part 'sale_action_request_model.g.dart';

/// Optional parameters sent when finalizing or canceling a sale.
///
/// Fields:
/// - [message]: Message shown on the display after finalize/cancel (optional).
/// - [showMessage]: Whether to show the message on the display. Default: `true`.
/// - [showCloseButton]: Whether to show the close button. Default: `true`.
/// - [buttonCloseText]: Text for the close button (optional).
/// - [messageInterval]: Duration the message is shown in milliseconds. Default: `3000`.
@freezed
abstract class SaleActionRequestModel with _$SaleActionRequestModel {
  const factory SaleActionRequestModel({
    String? message,
    @Default(true) bool showMessage,
    @Default(true) bool showCloseButton,
    String? buttonCloseText,
    @Default(3000) int messageInterval,
  }) = _SaleActionRequestModel;

  factory SaleActionRequestModel.fromJson(
    Map<String, dynamic> json,
  ) => _$SaleActionRequestModelFromJson(json);
}
