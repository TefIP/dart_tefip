import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_model.freezed.dart';
part 'transaction_response_model.g.dart';

@freezed
abstract class TransactionResponseModel with _$TransactionResponseModel {
  const factory TransactionResponseModel({
    @Default(null) String? nsu,
    @Default(null) String? message,
    @Default(null) Map<String, dynamic>? details,
  }) = _TransactionResponseModel;

  factory TransactionResponseModel.empty() => const TransactionResponseModel();

  factory TransactionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseModelFromJson(json);
}
