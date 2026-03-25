import 'package:dart_tefip/src/core/models/sale_start_request/sale_start_request_model.dart';
import 'package:test/test.dart';

void main() {
  group('SaleStartRequestModel', () {
    group('fromJson', () {
      test('all fields null when absent', () {
        final model = SaleStartRequestModel.fromJson({});

        expect(model.customerDocument, isNull);
        expect(model.customerName, isNull);
        expect(model.sellerName, isNull);
        expect(model.additionalInfo, isNull);
      });

      test('full model is parsed correctly', () {
        final model = SaleStartRequestModel.fromJson({
          'customerDocument': '123.456.789-00',
          'customerName': 'João Silva',
          'sellerName': 'Maria',
          'additionalInfo': 'Mesa 12',
        });

        expect(model.customerDocument, equals('123.456.789-00'));
        expect(model.customerName, equals('João Silva'));
        expect(model.sellerName, equals('Maria'));
        expect(model.additionalInfo, equals('Mesa 12'));
      });
    });

    group('toJson', () {
      test('null fields are serialized', () {
        const model = SaleStartRequestModel();
        final json = model.toJson();

        expect(json['customerDocument'], isNull);
        expect(json['customerName'], isNull);
      });

      test('round-trip preserves data', () {
        const model = SaleStartRequestModel(
          customerDocument: '000.000.000-00',
          customerName: 'Cliente Test',
        );
        final json = model.toJson();
        final restored = SaleStartRequestModel.fromJson(json);

        expect(restored, equals(model));
      });
    });

    group('equality', () {
      test('two identical models are equal', () {
        const a = SaleStartRequestModel(customerName: 'João');
        const b = SaleStartRequestModel(customerName: 'João');
        expect(a, equals(b));
      });

      test('empty models are equal', () {
        const a = SaleStartRequestModel();
        const b = SaleStartRequestModel();
        expect(a, equals(b));
      });
    });
  });
}
