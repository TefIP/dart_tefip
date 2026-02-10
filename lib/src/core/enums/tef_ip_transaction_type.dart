import 'package:freezed_annotation/freezed_annotation.dart';

enum TefIPTransactionType {
  @JsonValue('CC')
  credit,
  @JsonValue('CD')
  debit,
  @JsonValue('PX')
  pix,
  @JsonValue('XX')
  unknown,
}
