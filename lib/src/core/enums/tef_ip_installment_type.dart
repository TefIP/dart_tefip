/// Defines the installment type applied to a transaction.
///
/// This enum specifies how installment charges are handled
/// during a credit transaction.
///
/// Possible values:
/// - [single]: Single payment (no installments).
/// - [seller]: Installments paid by the seller (no interest to buyer).
/// - [buyer]: Installments paid by the buyer (interest applied to buyer).
enum TefIPInstallmentType {
  /// Single payment without installments.
  single,

  /// Installments financed by the seller.
  seller,

  /// Installments financed by the buyer.
  buyer,
}