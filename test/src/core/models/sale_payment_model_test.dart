import 'package:dart_tefip/src/core/enums/tef_ip_sale_payment_type.dart';
import 'package:dart_tefip/src/core/models/sale_payment/sale_payment_model.dart';
import 'package:test/test.dart';

void main() {
  group('SalePaymentModel', () {
    group('fromJson', () {
      test('reads tPag field into type', () {
        final model = SalePaymentModel.fromJson({
          'id': 'PGTO-001',
          'tPag': 'credit',
          'value': 50.0,
        });

        expect(model.type, equals(TefIPSalePaymentType.credit));
      });

      test('type defaults to unknown when tPag is absent', () {
        final model = SalePaymentModel.fromJson({
          'id': 'PGTO-001',
          'value': 20.0,
        });

        expect(model.type, equals(TefIPSalePaymentType.unknown));
      });

      test('full model is parsed correctly', () {
        final model = SalePaymentModel.fromJson({
          'id': 'PGTO-001',
          'tPag': 'pix',
          'description': 'PIX payment',
          'value': 99.9,
          'additionalInfo': 'extra info',
        });

        expect(model.id, equals('PGTO-001'));
        expect(model.type, equals(TefIPSalePaymentType.pix));
        expect(model.description, equals('PIX payment'));
        expect(model.value, equals(99.9));
        expect(model.additionalInfo, equals('extra info'));
      });

      test('optional fields default to null', () {
        final model = SalePaymentModel.fromJson({
          'id': 'PGTO-001',
          'value': 10.0,
        });

        expect(model.description, isNull);
        expect(model.additionalInfo, isNull);
      });
    });

    group('toJson', () {
      test('type is serialized as "tPag" key', () {
        const model = SalePaymentModel(
          id: 'PGTO-001',
          type: TefIPSalePaymentType.debit,
          value: 30.0,
        );
        final json = model.toJson();

        expect(json.containsKey('tPag'), isTrue);
        expect(json['tPag'], equals('debit'));
        expect(json.containsKey('type'), isFalse);
      });

      test('round-trip fromJson → toJson preserves tPag', () {
        final original = {'id': 'PGTO-001', 'tPag': 'money', 'value': 15.0};
        final model = SalePaymentModel.fromJson(original);
        final json = model.toJson();

        expect(json['tPag'], equals('money'));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = SalePaymentModel(id: 'P1', value: 10.0);
        const b = SalePaymentModel(id: 'P1', value: 10.0);
        expect(a, equals(b));
      });

      test('models with different values are not equal', () {
        const a = SalePaymentModel(id: 'P1', value: 10.0);
        const b = SalePaymentModel(id: 'P1', value: 20.0);
        expect(a, isNot(equals(b)));
      });
    });
  });
}
