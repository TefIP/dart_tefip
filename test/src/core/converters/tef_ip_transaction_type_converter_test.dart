import 'package:dart_tefip/src/core/converters/tef_ip_transaction_type_converter.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:test/test.dart';

void main() {
  const converter = TefIPTransactionTypeConverter();

  group('TefIPTransactionTypeConverter', () {
    group('fromJson', () {
      test('"03" returns credit', () {
        expect(converter.fromJson('03'), equals(TefIPTransactionType.credit));
      });

      test('"04" returns debit', () {
        expect(converter.fromJson('04'), equals(TefIPTransactionType.debit));
      });

      test('"17" returns pix', () {
        expect(converter.fromJson('17'), equals(TefIPTransactionType.pix));
      });

      test('"99" returns unknown', () {
        expect(converter.fromJson('99'), equals(TefIPTransactionType.unknown));
      });

      test('unrecognized string returns unknown', () {
        expect(
          converter.fromJson('INVALID'),
          equals(TefIPTransactionType.unknown),
        );
      });
    });

    group('toJson', () {
      test('credit returns "03"', () {
        expect(converter.toJson(TefIPTransactionType.credit), equals('03'));
      });

      test('debit returns "04"', () {
        expect(converter.toJson(TefIPTransactionType.debit), equals('04'));
      });

      test('pix returns "17"', () {
        expect(converter.toJson(TefIPTransactionType.pix), equals('17'));
      });

      test('unknown returns "99"', () {
        expect(converter.toJson(TefIPTransactionType.unknown), equals('99'));
      });
    });

    group('round-trip', () {
      test('fromJson then toJson preserves code', () {
        for (final type in TefIPTransactionType.values) {
          final code = converter.toJson(type);
          expect(converter.fromJson(code), equals(type));
        }
      });
    });
  });
}
