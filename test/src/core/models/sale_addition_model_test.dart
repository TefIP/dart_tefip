import 'package:dart_tefip/src/core/models/export.dart';
import 'package:test/test.dart';

void main() {
  group('SaleAdditionModel', () {
    test('SaleAdditionModel round-trip preserves fields', () {
      final original = SaleAdditionModel(
        id: 'ACR-001',
        description: 'Taxa serviço',
        value: 5.0,
        additionalInfo: '10%',
      );
      final parsed = SaleAdditionModel.fromJson(original.toJson());
      expect(parsed, equals(original));
    });
  });
}
