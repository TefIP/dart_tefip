import 'package:dart_tefip/src/core/models/export.dart';
import 'package:test/test.dart';

void main() {
  group('SaleDiscountModel', () {
    test('SaleDiscountModel fromJson parses correctly', () {
      final model = SaleDiscountModel.fromJson({
        'id': 'DESC-001',
        'description': 'Desconto fidelidade',
        'value': 10.5,
        'additionalInfo': 'Cupom cliente',
      });
      expect(model.id, 'DESC-001');
      expect(model.value, 10.5);
    });
  });
}
