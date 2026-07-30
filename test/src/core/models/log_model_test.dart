import 'package:dart_tefip/src/core/enums/tef_ip_log_level.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_log_source.dart';
import 'package:dart_tefip/src/core/models/log/log_model.dart';
import 'package:test/test.dart';

void main() {
  group('LogModel', () {
    group('fromJson', () {
      test('parses createdAt from Unix seconds', () {
        final model = LogModel.fromJson({
          'id': 42,
          'level': 'error',
          'source': 'http',
          'message': 'POST /transaction returned 500',
          'details': 'connection refused',
          'createdAt': 1704067200,
        });

        expect(
          model.createdAt,
          equals(DateTime.fromMillisecondsSinceEpoch(1704067200000)),
        );
        expect(model.toJson()['createdAt'], equals(1704067200));
      });

      test('parses createdAt from Unix milliseconds', () {
        final model = LogModel.fromJson({
          'id': 42,
          'level': 'error',
          'source': 'http',
          'message': 'POST /transaction returned 500',
          'createdAt': 1704067200000,
        });

        expect(
          model.createdAt,
          equals(DateTime.fromMillisecondsSinceEpoch(1704067200000)),
        );
        expect(model.toJson()['createdAt'], equals(1704067200));
      });

      test('parses all fields correctly', () {
        final model = LogModel.fromJson({
          'id': 42,
          'level': 'warning',
          'source': 'router',
          'message': 'Route not found',
          'details': 'GET /unknown',
          'createdAt': 1704067200,
        });

        expect(model.id, equals(42));
        expect(model.level, equals(TefIPLogLevel.warning));
        expect(model.source, equals(TefIPLogSource.router));
        expect(model.message, equals('Route not found'));
        expect(model.details, equals('GET /unknown'));
      });

      test('details and createdAt default to null when absent', () {
        final model = LogModel.fromJson({
          'id': 1,
          'level': 'info',
          'source': 'app',
          'message': 'Started',
        });

        expect(model.details, isNull);
        expect(model.createdAt, isNull);
      });
    });

    group('toJson', () {
      test('serializes all fields correctly', () {
        const model = LogModel(
          id: 7,
          level: TefIPLogLevel.debug,
          source: TefIPLogSource.app,
          message: 'Boot sequence complete',
          details: 'took 512ms',
        );
        final json = model.toJson();

        expect(json['id'], equals(7));
        expect(json['level'], equals('debug'));
        expect(json['source'], equals('app'));
        expect(json['message'], equals('Boot sequence complete'));
        expect(json['details'], equals('took 512ms'));
      });

      test('null fields are serialized as null', () {
        const model = LogModel(
          id: 1,
          level: TefIPLogLevel.info,
          source: TefIPLogSource.app,
          message: 'Started',
        );
        final json = model.toJson();

        expect(json['details'], isNull);
        expect(json['createdAt'], isNull);
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = LogModel(
          id: 1,
          level: TefIPLogLevel.info,
          source: TefIPLogSource.app,
          message: 'Started',
        );
        const b = LogModel(
          id: 1,
          level: TefIPLogLevel.info,
          source: TefIPLogSource.app,
          message: 'Started',
        );
        expect(a, equals(b));
      });

      test('models with different values are not equal', () {
        const a = LogModel(
          id: 1,
          level: TefIPLogLevel.info,
          source: TefIPLogSource.app,
          message: 'Started',
        );
        const b = LogModel(
          id: 2,
          level: TefIPLogLevel.info,
          source: TefIPLogSource.app,
          message: 'Started',
        );
        expect(a, isNot(equals(b)));
      });
    });
  });
}
