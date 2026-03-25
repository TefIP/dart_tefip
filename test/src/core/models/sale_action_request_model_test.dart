import 'package:dart_tefip/src/core/models/sale_action_request/sale_action_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('SaleActionRequestModel', () {
    group('defaults', () {
      test('showMessage and showCloseButton default to true', () {
        const model = SaleActionRequestModel();
        expect(model.showMessage, isTrue);
        expect(model.showCloseButton, isTrue);
      });

      test('messageInterval defaults to 3000', () {
        const model = SaleActionRequestModel();
        expect(model.messageInterval, equals(3000));
      });
    });

    group('fromJson', () {
      test('parses all fields correctly', () {
        final model = SaleActionRequestModel.fromJson({
          'message': 'Venda finalizada!',
          'showMessage': false,
          'showCloseButton': false,
          'buttonCloseText': 'Fechar',
          'messageInterval': 5000,
        });

        expect(model.message, equals('Venda finalizada!'));
        expect(model.showMessage, isFalse);
        expect(model.showCloseButton, isFalse);
        expect(model.buttonCloseText, equals('Fechar'));
        expect(model.messageInterval, equals(5000));
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        const model = SaleActionRequestModel(
          message: 'Cancelado!',
          showMessage: true,
          showCloseButton: false,
          buttonCloseText: 'OK',
          messageInterval: 2000,
        );
        final restored = SaleActionRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two default models are equal', () {
        const a = SaleActionRequestModel();
        const b = SaleActionRequestModel();
        expect(a, equals(b));
      });

      test('models with different messages are not equal', () {
        const a = SaleActionRequestModel(message: 'OK');
        const b = SaleActionRequestModel(message: 'Falhou');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
