import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response_model.freezed.dart';
part 'transaction_response_model.g.dart';

@freezed
/// Model representing the response returned after a transaction request.
///
/// Contains transaction identifiers and optional additional metadata
/// returned by the terminal/acquirer.
///
/// Fields:
/// - [nsu]: Unique sequential number generated for the transaction.
/// - [message]: Informational or status message related to the transaction.
/// - [details]: Additional structured response data.
///
/// Factories:
/// - `empty()`: Returns a default empty instance.
/// - `fromJson`: Creates an instance from a JSON map.
///
/// Generated:
/// - `toJson` method via Freezed/JsonSerializable.
abstract class TransactionResponseModel with _$TransactionResponseModel {
  const factory TransactionResponseModel({
    @Default(null) String? nsu,
    @Default(null) String? message,
    @Default(null) Map<String, dynamic>? details,
  }) = _TransactionResponseModel;

  factory TransactionResponseModel.empty() => const TransactionResponseModel();

  factory TransactionResponseModel.fromJson(
    Map<String, dynamic> json,
  ) => _$TransactionResponseModelFromJson(json);
}
