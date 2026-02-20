/// Represents the current status of a transaction.
///
/// This enum reflects the lifecycle state returned
/// by the TefIP transaction endpoints.
///
/// Possible values:
/// - [pending]: The transaction has been created and is awaiting completion.
/// - [paid]: The transaction was successfully completed.
/// - [cancelled]: The transaction was cancelled or reversed.
/// - [unknown]: The transaction status could not be determined.
enum TefIPTransactionStatus {
  /// Transaction is awaiting completion.
  pending,

  /// Transaction completed successfully.
  paid,

  /// Transaction was cancelled or reversed.
  cancelled,

  /// Status is not recognized or not provided by the API.
  unknown,
}