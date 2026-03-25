import 'package:dart_tefip/src/core/models/ask_option/ask_option_model.dart';
import 'package:test/test.dart';

void main() {
  group('AskOptionModel', () {
    group('fromJson', () {
      test('parses required fields correctly', () {
        final model = AskOptionModel.fromJson({'id': 1, 'name': 'Option A'});

        expect(model.id, equals(1));
        expect(model.name, equals('Option A'));
        expect(model.value, isNull);
      });

      test('parses value when present', () {
        final model = AskOptionModel.fromJson({
          'id': 2,
          'name': 'Option B',
          'value': 'option_b',
        });

        expect(model.value, equals('option_b'));
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        const model = AskOptionModel(id: 3, name: 'C', value: 'c_val');
        final restored = AskOptionModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = AskOptionModel(id: 1, name: 'A', value: 'a');
        const b = AskOptionModel(id: 1, name: 'A', value: 'a');
        expect(a, equals(b));
      });

      test('models with different ids are not equal', () {
        const a = AskOptionModel(id: 1, name: 'A');
        const b = AskOptionModel(id: 2, name: 'A');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
