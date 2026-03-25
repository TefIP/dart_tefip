import 'package:dart_tefip/src/core/enums/tef_ip_question_type.dart';
import 'package:dart_tefip/src/core/models/ask_option/ask_option_model.dart';
import 'package:dart_tefip/src/core/models/ask_question_request/ask_question_model.dart';
import 'package:test/test.dart';

void main() {
  group('AskQuestionModel', () {
    group('defaults', () {
      test('scalar defaults are applied', () {
        const model = AskQuestionModel();
        expect(model.id, equals(0));
        expect(model.type, equals(TefIPQuestionType.text));
        expect(model.required, isFalse);
        expect(model.minLength, equals(0));
        expect(model.maxLength, equals(255));
      });

      test('optional fields default to null', () {
        const model = AskQuestionModel();
        expect(model.question, isNull);
        expect(model.defaultValue, isNull);
        expect(model.mask, isNull);
        expect(model.regex, isNull);
        expect(model.errorMessage, isNull);
        expect(model.options, isNull);
      });
    });

    group('fromJson', () {
      test('parses all scalar fields correctly', () {
        final model = AskQuestionModel.fromJson({
          'id': 5,
          'question': 'Qual seu CPF?',
          'type': 'CPF',
          'required': true,
          'minLength': 11,
          'maxLength': 11,
          'defaultValue': '000.000.000-00',
          'mask': '###.###.###-##',
          'errorMessage': 'CPF inválido',
        });

        expect(model.id, equals(5));
        expect(model.question, equals('Qual seu CPF?'));
        expect(model.type, equals(TefIPQuestionType.cpf));
        expect(model.required, isTrue);
        expect(model.minLength, equals(11));
        expect(model.maxLength, equals(11));
        expect(model.defaultValue, equals('000.000.000-00'));
        expect(model.mask, equals('###.###.###-##'));
        expect(model.errorMessage, equals('CPF inválido'));
      });

      test('parses options list', () {
        final model = AskQuestionModel.fromJson({
          'type': 'LIST',
          'options': [
            {'id': 1, 'name': 'Sim'},
            {'id': 2, 'name': 'Não'},
          ],
        });

        expect(model.options, hasLength(2));
        expect(model.options![0].id, equals(1));
        expect(model.options![1].name, equals('Não'));
      });
    });

    group('toJson', () {
      test('round-trip preserves data', () {
        const model = AskQuestionModel(
          id: 1,
          question: 'Seu email?',
          type: TefIPQuestionType.email,
          required: true,
          options: [AskOptionModel(id: 1, name: 'A')],
        );
        final restored = AskQuestionModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two default models are equal', () {
        const a = AskQuestionModel();
        const b = AskQuestionModel();
        expect(a, equals(b));
      });

      test('models with different types are not equal', () {
        const a = AskQuestionModel(type: TefIPQuestionType.cpf);
        const b = AskQuestionModel(type: TefIPQuestionType.email);
        expect(a, isNot(equals(b)));
      });
    });
  });
}
