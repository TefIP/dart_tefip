import 'package:dart_tefip/src/core/models/sale_mutation_response/sale_mutation_response_model.dart';
import 'package:test/test.dart';

void main() {
  group('SaleMutationResponseModel', () {
    group('fromJson', () {
      test('parses all fields', () {
        final model = SaleMutationResponseModel.fromJson({
          'message': 'ok',
          'itemId': 'ITEM-001',
          'paymentId': 'PGTO-001',
        });

        expect(model.message, equals('ok'));
        expect(model.itemId, equals('ITEM-001'));
        expect(model.paymentId, equals('PGTO-001'));
      });

      test('optional fields default to null', () {
        final model = SaleMutationResponseModel.fromJson({'message': 'ok'});

        expect(model.itemId, isNull);
        expect(model.paymentId, isNull);
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        const model = SaleMutationResponseModel(
          message: 'item added',
          itemId: 'ITEM-001',
        );
        final json = model.toJson();
        final restored = SaleMutationResponseModel.fromJson(json);

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = SaleMutationResponseModel(message: 'ok', itemId: 'I1');
        const b = SaleMutationResponseModel(message: 'ok', itemId: 'I1');
        expect(a, equals(b));
      });
    });
  });
}
