import 'package:dart_tefip/src/core/models/ask_parameters/ask_parameters_model.dart';
import 'package:test/test.dart';

void main() {
  group('AskParametersModel', () {
    group('defaults', () {
      test('buttonText defaults to Confirmar', () {
        const model = AskParametersModel();
        expect(model.buttonText, equals('Confirmar'));
      });

      test('showCancelButton defaults to false', () {
        const model = AskParametersModel();
        expect(model.showCancelButton, isFalse);
      });

      test('buttonCancelText defaults to Cancelar', () {
        const model = AskParametersModel();
        expect(model.buttonCancelText, equals('Cancelar'));
      });

      test('showSuccessMessage defaults to false', () {
        const model = AskParametersModel();
        expect(model.showSuccessMessage, isFalse);
      });

      test('successMessage defaults to null', () {
        const model = AskParametersModel();
        expect(model.successMessage, isNull);
      });

      test('successMessageInterval defaults to 3000', () {
        const model = AskParametersModel();
        expect(model.successMessageInterval, equals(3000));
      });

      test('confirmAnswer defaults to false', () {
        const model = AskParametersModel();
        expect(model.confirmAnswer, isFalse);
      });
    });

    group('fromJson', () {
      test('parses all fields correctly', () {
        final model = AskParametersModel.fromJson({
          'buttonText': 'OK',
          'showCancelButton': true,
          'buttonCancelText': 'Voltar',
          'showSuccessMessage': true,
          'successMessage': 'Obrigado!',
          'successMessageInterval': 5000,
          'confirmAnswer': true,
        });

        expect(model.buttonText, equals('OK'));
        expect(model.showCancelButton, isTrue);
        expect(model.buttonCancelText, equals('Voltar'));
        expect(model.showSuccessMessage, isTrue);
        expect(model.successMessage, equals('Obrigado!'));
        expect(model.successMessageInterval, equals(5000));
        expect(model.confirmAnswer, isTrue);
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        const model = AskParametersModel(
          buttonText: 'Pronto',
          showCancelButton: true,
          successMessage: 'Feito!',
          successMessageInterval: 2000,
        );
        final restored = AskParametersModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two default models are equal', () {
        const a = AskParametersModel();
        const b = AskParametersModel();
        expect(a, equals(b));
      });

      test('models with different values are not equal', () {
        const a = AskParametersModel(buttonText: 'OK');
        const b = AskParametersModel(buttonText: 'Sim');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
