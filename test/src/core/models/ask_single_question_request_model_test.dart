import 'package:dart_tefip/src/core/models/ask_parameters/ask_parameters_model.dart';
import 'package:dart_tefip/src/core/models/ask_question_request/ask_question_model.dart';
import 'package:dart_tefip/src/core/models/ask_single_question_request/ask_single_question_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('AskSingleQuestionRequestModel', () {
    group('fromJson', () {
      test('parses parameters and question correctly', () {
        final model = AskSingleQuestionRequestModel.fromJson({
          'parameters': {
            'buttonText': 'OK',
            'showCancelButton': false,
            'buttonCancelText': 'Cancelar',
            'showSuccessMessage': false,
            'successMessageInterval': 3000,
            'confirmAnswer': false,
          },
          'question': {
            'id': 1,
            'question': 'Qual seu nome?',
            'type': 'TEXT',
            'required': true,
            'minLength': 0,
            'maxLength': 255,
          },
        });

        expect(model.parameters.buttonText, equals('OK'));
        expect(model.question.id, equals(1));
        expect(model.question.question, equals('Qual seu nome?'));
        expect(model.question.required, isTrue);
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        final model = AskSingleQuestionRequestModel(
          parameters: const AskParametersModel(showCancelButton: true),
          question: const AskQuestionModel(id: 3, question: 'CPF?'),
        );
        final restored =
            AskSingleQuestionRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        final a = AskSingleQuestionRequestModel(
          parameters: const AskParametersModel(),
          question: const AskQuestionModel(id: 1),
        );
        final b = AskSingleQuestionRequestModel(
          parameters: const AskParametersModel(),
          question: const AskQuestionModel(id: 1),
        );
        expect(a, equals(b));
      });

      test('models with different questions are not equal', () {
        final a = AskSingleQuestionRequestModel(
          parameters: const AskParametersModel(),
          question: const AskQuestionModel(id: 1),
        );
        final b = AskSingleQuestionRequestModel(
          parameters: const AskParametersModel(),
          question: const AskQuestionModel(id: 2),
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
