import 'package:dart_tefip/dart_tefip.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TefIPTransactionTypeConverter
    implements JsonConverter<TefIPTransactionType, String> {
  const TefIPTransactionTypeConverter();

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

  @override
  String toJson(TefIPTransactionType object) {
    return object.name;
  }
}
