import 'package:dart_tefip/src/core/models/sale_item/sale_item_model.dart';
import 'package:test/test.dart';

void main() {
  group('SaleItemModel', () {
    group('fromJson', () {
      test('canceled defaults to false when absent', () {
        final model = SaleItemModel.fromJson({
          'id': 'ITEM-001',
          'code': 'EAN-001',
          'description': 'Product',
          'quantity': 1.0,
          'unitPrice': 10.0,
          'total': 10.0,
        });

        expect(model.canceled, isFalse);
      });

      test('full model is parsed correctly', () {
        final model = SaleItemModel.fromJson({
          'id': 'ITEM-001',
          'code': '7891234560017',
          'description': 'Coca-Cola 350ml',
          'canceled': false,
          'quantity': 2.0,
          'unitPrice': 5.5,
          'discount': 0.5,
          'addition': null,
          'total': 10.5,
          'additionalInfo': 'cold',
        });

        expect(model.id, equals('ITEM-001'));
        expect(model.code, equals('7891234560017'));
        expect(model.description, equals('Coca-Cola 350ml'));
        expect(model.canceled, isFalse);
        expect(model.quantity, equals(2.0));
        expect(model.unitPrice, equals(5.5));
        expect(model.discount, equals(0.5));
        expect(model.addition, isNull);
        expect(model.total, equals(10.5));
        expect(model.additionalInfo, equals('cold'));
      });

      test('canceled true is parsed correctly', () {
        final model = SaleItemModel.fromJson({
          'id': 'ITEM-002',
          'code': 'CODE',
          'description': 'desc',
          'canceled': true,
          'quantity': 1.0,
          'unitPrice': 1.0,
          'total': 1.0,
        });

        expect(model.canceled, isTrue);
      });
    });

    group('toJson', () {
      test('round-trip preserves all fields', () {
        final original = {
          'id': 'ITEM-001',
          'code': 'EAN-001',
          'description': 'Product A',
          'canceled': false,
          'quantity': 3.0,
          'unitPrice': 7.0,
          'discount': null,
          'addition': null,
          'total': 21.0,
          'additionalInfo': null,
        };
        final model = SaleItemModel.fromJson(original);
        final json = model.toJson();

        expect(json['id'], equals('ITEM-001'));
        expect(json['quantity'], equals(3.0));
        expect(json['total'], equals(21.0));
        expect(json['canceled'], isFalse);
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = SaleItemModel(
          id: 'I1',
          code: 'C1',
          description: 'desc',
          quantity: 1.0,
          unitPrice: 10.0,
          total: 10.0,
        );
        const b = SaleItemModel(
          id: 'I1',
          code: 'C1',
          description: 'desc',
          quantity: 1.0,
          unitPrice: 10.0,
          total: 10.0,
        );

        expect(a, equals(b));
      });
    });
  });
}
