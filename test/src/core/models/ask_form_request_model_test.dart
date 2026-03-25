import 'package:dart_tefip/src/core/models/ask_form_request/ask_form_request_model.dart';
import 'package:dart_tefip/src/core/models/ask_parameters/ask_parameters_model.dart';
import 'package:dart_tefip/src/core/models/ask_question_request/ask_question_model.dart';
import 'package:test/test.dart';

void main() {
  group('AskFormRequestModel', () {
    group('fromJson', () {
      test('parses parameters and questions list correctly', () {
        final model = AskFormRequestModel.fromJson({
          'parameters': {
            'buttonText': 'Enviar',
            'showCancelButton': true,
            'buttonCancelText': 'Cancelar',
            'showSuccessMessage': false,
            'successMessageInterval': 3000,
            'confirmAnswer': false,
          },
          'questions': [
            {
              'id': 1,
              'question': 'Nome?',
              'type': 'TEXT',
              'required': true,
              'minLength': 0,
              'maxLength': 255,
            },
            {
              'id': 2,
              'question': 'CPF?',
              'type': 'CPF',
              'required': true,
              'minLength': 0,
              'maxLength': 255,
            },
          ],
        });

        expect(model.parameters.buttonText, equals('Enviar'));
        expect(model.questions, hasLength(2));
        expect(model.questions[0].id, equals(1));
        expect(model.questions[1].id, equals(2));
      });

      test('parses empty questions list', () {
        final model = AskFormRequestModel.fromJson({
          'parameters': {
            'buttonText': 'Confirmar',
            'showCancelButton': false,
            'buttonCancelText': 'Cancelar',
            'showSuccessMessage': false,
            'successMessageInterval': 3000,
            'confirmAnswer': false,
          },
          'questions': [],
        });

        expect(model.questions, isEmpty);
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        final model = AskFormRequestModel(
          parameters: const AskParametersModel(confirmAnswer: true),
          questions: const [
            AskQuestionModel(id: 1),
            AskQuestionModel(id: 2),
          ],
        );
        final restored = AskFormRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        final a = AskFormRequestModel(
          parameters: const AskParametersModel(),
          questions: const [AskQuestionModel(id: 1)],
        );
        final b = AskFormRequestModel(
          parameters: const AskParametersModel(),
          questions: const [AskQuestionModel(id: 1)],
        );
        expect(a, equals(b));
      });

      test('models with different questions are not equal', () {
        final a = AskFormRequestModel(
          parameters: const AskParametersModel(),
          questions: const [AskQuestionModel(id: 1)],
        );
        final b = AskFormRequestModel(
          parameters: const AskParametersModel(),
          questions: const [AskQuestionModel(id: 2)],
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
