import 'package:dart_tefip/src/core/models/transaction_response/transaction_response_model.dart';
import 'package:test/test.dart';

void main() {
  group('TransactionResponseModel', () {
    group('defaults', () {
      test('empty() has all fields null', () {
        final model = TransactionResponseModel.empty();

        expect(model.nsu, isNull);
        expect(model.cnpj, isNull);
        expect(model.txid, isNull);
        expect(model.cAut, isNull);
        expect(model.tBand, isNull);
        expect(model.tPag, isNull);
        expect(model.acquirer, isNull);
        expect(model.message, isNull);
        expect(model.details, isNull);
      });
    });

    group('fromJson', () {
      test('preserves acquirer metadata from a complete response', () {
        final model = TransactionResponseModel.fromJson({
          'nsu': '123456',
          'cnpj': '05481336000137',
          'txid': 'pix-123',
          'cAut': 'AUTH-1',
          'tBand': 'Visa',
          'tPag': '03',
          'acquirer': 'Stone',
          'message': 'Approved',
          'details': {'terminal': 'T1'},
        });

        expect(model.acquirer, equals('Stone'));
        expect(model.toJson()['acquirer'], equals('Stone'));
      });

      test('parses all fields correctly', () {
        final model = TransactionResponseModel.fromJson({
          'nsu': '123456',
          'cnpj': '05481336000137',
          'txid': 'pix-123',
          'cAut': 'AUTH-1',
          'tBand': 'Visa',
          'tPag': '03',
          'acquirer': 'Stone',
          'message': 'Approved',
          'details': {'terminal': 'T1'},
        });

        expect(model.nsu, equals('123456'));
        expect(model.cnpj, equals('05481336000137'));
        expect(model.txid, equals('pix-123'));
        expect(model.cAut, equals('AUTH-1'));
        expect(model.tBand, equals('Visa'));
        expect(model.tPag, equals('03'));
        expect(model.message, equals('Approved'));
        expect(model.details, equals({'terminal': 'T1'}));
      });

      test('PIX response has txid and null cAut', () {
        final model = TransactionResponseModel.fromJson({
          'txid': 'pix-123',
          'tPag': '17',
        });

        expect(model.txid, equals('pix-123'));
        expect(model.cAut, isNull);
      });

      test('credit/debit response has cAut and null txid', () {
        final model = TransactionResponseModel.fromJson({
          'cAut': 'AUTH-1',
          'tPag': '03',
        });

        expect(model.cAut, equals('AUTH-1'));
        expect(model.txid, isNull);
      });

      test('null fields remain null', () {
        final model = TransactionResponseModel.fromJson({});

        expect(model.nsu, isNull);
        expect(model.cnpj, isNull);
        expect(model.acquirer, isNull);
        expect(model.message, isNull);
        expect(model.details, isNull);
      });
    });

    group('toJson', () {
      test('serializes all fields correctly', () {
        const model = TransactionResponseModel(
          nsu: '123456',
          cnpj: '05481336000137',
          cAut: 'AUTH-1',
          tBand: 'Visa',
          tPag: '03',
          acquirer: 'Stone',
          message: 'Approved',
          details: {'terminal': 'T1'},
        );
        final json = model.toJson();

        expect(json['nsu'], equals('123456'));
        expect(json['cnpj'], equals('05481336000137'));
        expect(json['cAut'], equals('AUTH-1'));
        expect(json['tBand'], equals('Visa'));
        expect(json['tPag'], equals('03'));
        expect(json['acquirer'], equals('Stone'));
        expect(json['message'], equals('Approved'));
        expect(json['details'], equals({'terminal': 'T1'}));
      });

      test('null fields are serialized as null', () {
        final model = TransactionResponseModel.empty();
        final json = model.toJson();

        expect(json['nsu'], isNull);
        expect(json['acquirer'], isNull);
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = TransactionResponseModel(nsu: '123', acquirer: 'Stone');
        const b = TransactionResponseModel(nsu: '123', acquirer: 'Stone');
        expect(a, equals(b));
      });

      test('models with different values are not equal', () {
        const a = TransactionResponseModel(nsu: '123');
        const b = TransactionResponseModel(nsu: '456');
        expect(a, isNot(equals(b)));
      });
    });
  });
}
