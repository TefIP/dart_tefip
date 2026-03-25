import 'package:dart_tefip/src/core/models/display_text_request/display_text_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('DisplayTextRequestModel', () {
    group('fromJson', () {
      test('parses required fields correctly', () {
        final model = DisplayTextRequestModel.fromJson({
          'content': [
            {'line': 'Hello'},
          ],
          'backgroundColor': 'white',
        });

        expect(model.content, hasLength(1));
        expect(model.backgroundColor, equals('white'));
        expect(model.showCloseButton, isNull);
      });

      test('parses showCloseButton when present', () {
        final model = DisplayTextRequestModel.fromJson({
          'content': [],
          'backgroundColor': 'black',
          'showCloseButton': true,
        });

        expect(model.showCloseButton, isTrue);
      });

      test('parses complex content structure', () {
        final model = DisplayTextRequestModel.fromJson({
          'content': [
            {
              'line': {
                'customization': {
                  'font_style': {'bold': true, 'italic': false},
                  'font_size': 24,
                  'alignment': 1,
                },
                'content': 'CAIXA LIVRE',
              },
            },
          ],
          'backgroundColor': 'white',
          'showCloseButton': false,
        });

        final line = model.content[0]['line'] as Map;
        expect(line['content'], equals('CAIXA LIVRE'));
      });
    });

    group('toJson', () {
      test('null showCloseButton is serialized as null', () {
        final model = DisplayTextRequestModel(
          content: [],
          backgroundColor: 'white',
        );
        final json = model.toJson();

        expect(json['showCloseButton'], isNull);
      });

      test('round-trip preserves data', () {
        final model = DisplayTextRequestModel(
          content: [
            {'line': 'Test'},
          ],
          backgroundColor: '#000000',
          showCloseButton: true,
        );
        final restored = DisplayTextRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        final a = DisplayTextRequestModel(
          content: [
            {'text': 'A'},
          ],
          backgroundColor: 'white',
          showCloseButton: false,
        );
        final b = DisplayTextRequestModel(
          content: [
            {'text': 'A'},
          ],
          backgroundColor: 'white',
          showCloseButton: false,
        );
        expect(a, equals(b));
      });

      test('models with different backgroundColor are not equal', () {
        final a = DisplayTextRequestModel(
          content: [],
          backgroundColor: 'white',
        );
        final b = DisplayTextRequestModel(
          content: [],
          backgroundColor: 'black',
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
