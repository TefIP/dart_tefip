import 'package:dart_tefip/src/core/enums/tef_ip_installment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_status.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_type.dart';
import 'package:dart_tefip/src/core/models/transaction_model/transaction_model.dart';
import 'package:test/test.dart';

void main() {
  group('TransactionModel', () {
    group('defaults', () {
      test('type defaults to unknown', () {
        const model = TransactionModel();
        expect(model.type, equals(TefIPTransactionType.unknown));
      });

      test('transactionStatus defaults to unknown', () {
        const model = TransactionModel();
        expect(model.transactionStatus, equals(TefIPTransactionStatus.unknown));
      });

      test('installmentType defaults to single', () {
        const model = TransactionModel();
        expect(model.installmentType, equals(TefIPInstallmentType.single));
      });

      test('amount defaults to 0.0', () {
        const model = TransactionModel();
        expect(model.amount, equals(0.0));
      });

      test('installments defaults to 1', () {
        const model = TransactionModel();
        expect(model.installments, equals(1));
      });
    });

    group('fromJson', () {
      test('parses type from tPag code', () {
        final model = TransactionModel.fromJson({'type': '03'});
        expect(model.type, equals(TefIPTransactionType.credit));
      });

      test('parses createdAt from Unix seconds', () {
        final model = TransactionModel.fromJson({'createdAt': 1700000000});
        expect(model.createdAt, isNotNull);
        expect(
          model.createdAt!.millisecondsSinceEpoch,
          equals(1700000000 * 1000),
        );
      });

      test('parses paymentDetails from map', () {
        final model = TransactionModel.fromJson({
          'paymentDetails': {'nsu': '12345'},
        });
        expect(model.paymentDetails, equals({'nsu': '12345'}));
      });

      test('null fields remain null', () {
        final model = TransactionModel.fromJson({});
        expect(model.referenceId, isNull);
        expect(model.nsu, isNull);
        expect(model.createdAt, isNull);
        expect(model.paymentDetails, isNull);
      });

      test('full model is parsed correctly', () {
        final model = TransactionModel.fromJson({
          'referenceId': 'ref-001',
          'type': '17',
          'transactionStatus': 'paid',
          'installmentType': 'single',
          'amount': 99.9,
          'installments': 3,
          'nsu': 'NSU-999',
          'createdAt': 1700000000,
          'paymentDetails': {'brand': 'visa'},
        });

        expect(model.referenceId, equals('ref-001'));
        expect(model.type, equals(TefIPTransactionType.pix));
        expect(model.transactionStatus, equals(TefIPTransactionStatus.paid));
        expect(model.amount, equals(99.9));
        expect(model.installments, equals(3));
        expect(model.nsu, equals('NSU-999'));
        expect(model.paymentDetails, equals({'brand': 'visa'}));
      });
    });

    group('toJson', () {
      test('type is serialized as tPag code', () {
        const model = TransactionModel(type: TefIPTransactionType.debit);
        final json = model.toJson();
        expect(json['type'], equals('04'));
      });

      test('null fields are serialized as null', () {
        const model = TransactionModel();
        final json = model.toJson();
        expect(json['referenceId'], isNull);
        expect(json['nsu'], isNull);
        expect(json['createdAt'], isNull);
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = TransactionModel(referenceId: 'ref-1', amount: 50.0);
        const b = TransactionModel(referenceId: 'ref-1', amount: 50.0);
        expect(a, equals(b));
      });

      test('models with different values are not equal', () {
        const a = TransactionModel(amount: 10.0);
        const b = TransactionModel(amount: 20.0);
        expect(a, isNot(equals(b)));
      });
    });
  });
}
