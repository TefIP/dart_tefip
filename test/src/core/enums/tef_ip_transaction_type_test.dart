import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:test/test.dart';

void main() {
  group('TefIPTransactionType', () {
    group('tPag codes', () {
      test('credit has tPag "03"', () {
        expect(TefIPTransactionType.credit.tPag, equals('03'));
      });

      test('debit has tPag "04"', () {
        expect(TefIPTransactionType.debit.tPag, equals('04'));
      });

      test('pix has tPag "17"', () {
        expect(TefIPTransactionType.pix.tPag, equals('17'));
      });

      test('unknown has tPag "99"', () {
        expect(TefIPTransactionType.unknown.tPag, equals('99'));
      });
    });

    group('fromTPag', () {
      test('"03" returns credit', () {
        expect(TefIPTransactionType.fromTPag('03'), equals(TefIPTransactionType.credit));
      });

      test('"04" returns debit', () {
        expect(TefIPTransactionType.fromTPag('04'), equals(TefIPTransactionType.debit));
      });

      test('"17" returns pix', () {
        expect(TefIPTransactionType.fromTPag('17'), equals(TefIPTransactionType.pix));
      });

      test('"99" returns unknown', () {
        expect(TefIPTransactionType.fromTPag('99'), equals(TefIPTransactionType.unknown));
      });

      test('unrecognized value returns unknown', () {
        expect(TefIPTransactionType.fromTPag('INVALID'), equals(TefIPTransactionType.unknown));
        expect(TefIPTransactionType.fromTPag(''), equals(TefIPTransactionType.unknown));
        expect(TefIPTransactionType.fromTPag('00'), equals(TefIPTransactionType.unknown));
      });

      test('round-trip: fromTPag(tPag) returns original enum', () {
        for (final type in TefIPTransactionType.values) {
          expect(TefIPTransactionType.fromTPag(type.tPag), equals(type));
        }
      });
    });

    test('has exactly 4 values', () {
      expect(TefIPTransactionType.values.length, equals(4));
    });
  });
}
