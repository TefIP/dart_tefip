import 'package:dart_tefip/src/core/models/success_response/success_response_model.dart';
import 'package:test/test.dart';

void main() {
  group('SuccessResponseModel', () {
    group('fromJson', () {
      test('parses message field', () {
        final model = SuccessResponseModel.fromJson({'message': 'ok'});
        expect(model.message, equals('ok'));
      });
    });

    group('toJson', () {
      test('serializes message field', () {
        const model = SuccessResponseModel(message: 'success');
        final json = model.toJson();
        expect(json['message'], equals('success'));
      });

      test('round-trip preserves data', () {
        const model = SuccessResponseModel(message: 'done');
        final json = model.toJson();
        final restored = SuccessResponseModel.fromJson(json);
        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = SuccessResponseModel(message: 'ok');
        const b = SuccessResponseModel(message: 'ok');
        expect(a, equals(b));
      });

      test('models with different messages are not equal', () {
        const a = SuccessResponseModel(message: 'ok');
        const b = SuccessResponseModel(message: 'done');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
