import 'package:dart_tefip/src/core/models/notification_request/notification_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('NotificationRequestModel', () {
    group('fromJson', () {
      test('full model is parsed correctly', () {
        final model = NotificationRequestModel.fromJson({
          'title': 'Alert',
          'message': 'Payment complete',
        });

        expect(model.title, equals('Alert'));
        expect(model.message, equals('Payment complete'));
      });
    });

    group('toJson', () {
      test('serializes all fields', () {
        const model = NotificationRequestModel(
          title: 'Alert',
          message: 'Payment complete',
        );
        final json = model.toJson();

        expect(json['title'], equals('Alert'));
        expect(json['message'], equals('Payment complete'));
      });

      test('round-trip preserves data', () {
        const model = NotificationRequestModel(
          title: 'Test',
          message: 'Body text',
        );
        final json = model.toJson();
        final restored = NotificationRequestModel.fromJson(json);

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = NotificationRequestModel(title: 'T', message: 'M');
        const b = NotificationRequestModel(title: 'T', message: 'M');
        expect(a, equals(b));
      });

      test('models with different fields are not equal', () {
        const a = NotificationRequestModel(title: 'T', message: 'M1');
        const b = NotificationRequestModel(title: 'T', message: 'M2');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
