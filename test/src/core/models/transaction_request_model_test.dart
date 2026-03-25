import 'package:dart_tefip/src/core/enums/tef_ip_installment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:dart_tefip/src/core/models/transaction_request/transaction_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('TransactionRequestModel', () {
    group('defaults', () {
      test('type defaults to unknown', () {
        const model = TransactionRequestModel();
        expect(model.type, equals(TefIPTransactionType.unknown));
      });

      test('amount defaults to 0', () {
        const model = TransactionRequestModel();
        expect(model.amount, equals(0.0));
      });

      test('installments defaults to 1', () {
        const model = TransactionRequestModel();
        expect(model.installments, equals(1));
      });

      test('installmentType defaults to single', () {
        const model = TransactionRequestModel();
        expect(model.installmentType, equals(TefIPInstallmentType.single));
      });
    });

    group('empty factory', () {
      test('creates model with empty referenceId and default values', () {
        final model = TransactionRequestModel.empty();

        expect(model.referenceId, equals(''));
        expect(model.type, equals(TefIPTransactionType.unknown));
        expect(model.amount, equals(0.0));
        expect(model.installments, equals(1));
      });
    });

    group('fromJson', () {
      test('parses tPag codes correctly', () {
        expect(
          TransactionRequestModel.fromJson({'tPag': '03'}).type,
          equals(TefIPTransactionType.credit),
        );
        expect(
          TransactionRequestModel.fromJson({'tPag': '04'}).type,
          equals(TefIPTransactionType.debit),
        );
        expect(
          TransactionRequestModel.fromJson({'tPag': '17'}).type,
          equals(TefIPTransactionType.pix),
        );
      });

      test('parses all fields correctly', () {
        final model = TransactionRequestModel.fromJson({
          'referenceId': 'ref-abc',
          'tPag': '17',
          'amount': 199.9,
          'installments': 3,
          'installmentType': 'buyer',
          'details': {'key': 'value'},
        });

        expect(model.referenceId, equals('ref-abc'));
        expect(model.type, equals(TefIPTransactionType.pix));
        expect(model.amount, equals(199.9));
        expect(model.installments, equals(3));
        expect(model.installmentType, equals(TefIPInstallmentType.buyer));
        expect(model.details, equals({'key': 'value'}));
      });

      test('parses details from JSON-encoded string', () {
        final model = TransactionRequestModel.fromJson({
          'details': '{"nsu":"12345"}',
        });

        expect(model.details, equals({'nsu': '12345'}));
      });
    });

    group('toJson', () {
      test('type is serialized as tPag key with numeric code', () {
        const model = TransactionRequestModel(type: TefIPTransactionType.credit);
        final json = model.toJson();

        expect(json.containsKey('tPag'), isTrue);
        expect(json['tPag'], equals('03'));
        expect(json.containsKey('type'), isFalse);
      });

      test('round-trip preserves data', () {
        const model = TransactionRequestModel(
          referenceId: 'ref-001',
          type: TefIPTransactionType.debit,
          amount: 50.0,
          installments: 2,
          installmentType: TefIPInstallmentType.seller,
        );
        final restored = TransactionRequestModel.fromJson(model.toJson());

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = TransactionRequestModel(
          referenceId: 'ref-1',
          type: TefIPTransactionType.credit,
          amount: 100.0,
        );
        const b = TransactionRequestModel(
          referenceId: 'ref-1',
          type: TefIPTransactionType.credit,
          amount: 100.0,
        );
        expect(a, equals(b));
      });

      test('models with different amounts are not equal', () {
        const a = TransactionRequestModel(amount: 10.0);
        const b = TransactionRequestModel(amount: 20.0);
        expect(a, isNot(equals(b)));
      });
    });
  });
}
