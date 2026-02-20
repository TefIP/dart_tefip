import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Custom JSON converter responsible for mapping transaction type
/// representations returned by the TefIP API into the
/// [TefIPTransactionType] enum.
///
/// The API may return different string formats for the same
/// transaction type, including:
/// - Short codes (e.g., `CC`, `CD`, `PX`)
/// - Full lowercase names (e.g., `credit`, `debit`, `pix`)
///
/// This converter normalizes those representations into a
/// strongly typed [TefIPTransactionType] value.
///
/// If the value does not match any known type,
/// [TefIPTransactionType.unknown] is returned.
class TefIPTransactionTypeConverter
    implements JsonConverter<TefIPTransactionType, String> {
  /// Creates a constant instance of [TefIPTransactionTypeConverter].
  const TefIPTransactionTypeConverter();

  /// Converts the raw JSON string into a [TefIPTransactionType].
  ///
  /// Supported mappings:
  /// - `CC` or `credit` → [TefIPTransactionType.credit]
  /// - `CD` or `debit` → [TefIPTransactionType.debit]
  /// - `PX` or `pix` → [TefIPTransactionType.pix]
  ///
  /// Any other value results in [TefIPTransactionType.unknown].
  @override
  TefIPTransactionType fromJson(String json) {
    switch (json) {
      case 'CC':
      case 'credit':
        return TefIPTransactionType.credit;
      case 'CD':
      case 'debit':
        return TefIPTransactionType.debit;
      case 'PX':
      case 'pix':
        return TefIPTransactionType.pix;
      default:
        return TefIPTransactionType.unknown;
    }
  }

  /// Serializes a [TefIPTransactionType] into its string representation.
  ///
  /// The enum `name` is used as the serialized value.
  @override
  String toJson(TefIPTransactionType object) {
    return object.name;
  }
}