import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:test/test.dart';

void main() {
  group('TefIPEndpoints', () {
    group('fixed endpoints', () {
      test('ask', () => expect(TefIPEndpoints.ask, equals('/ask')));
      test('askCancel', () => expect(TefIPEndpoints.askCancel, equals('/ask/cancel')));
      test('askForm', () => expect(TefIPEndpoints.askForm, equals('/ask/form')));
      test('displayImage', () => expect(TefIPEndpoints.displayImage, equals('/display/image')));
      test('displayText', () => expect(TefIPEndpoints.displayText, equals('/display/text')));
      test('displayCarousel', () => expect(TefIPEndpoints.displayCarousel, equals('/display/carousel')));
      test('displayClear', () => expect(TefIPEndpoints.displayClear, equals('/display/clear')));
      test('displayPop', () => expect(TefIPEndpoints.displayPop, equals('/display/pop')));
      test('info', () => expect(TefIPEndpoints.info, equals('/info')));
      test('printImage', () => expect(TefIPEndpoints.printImage, equals('/print/image')));
      test('printText', () => expect(TefIPEndpoints.printText, equals('/print/text')));
      test('printXml', () => expect(TefIPEndpoints.printXml, equals('/print/xml')));
      test('restart', () => expect(TefIPEndpoints.restart, equals('/restart')));
      test('transaction', () => expect(TefIPEndpoints.transaction, equals('/transaction')));
      test('status', () => expect(TefIPEndpoints.status, equals('/status')));
      test('sale', () => expect(TefIPEndpoints.sale, equals('/sale')));
      test('saleItem', () => expect(TefIPEndpoints.saleItem, equals('/sale/item')));
      test('salePayment', () => expect(TefIPEndpoints.salePayment, equals('/sale/payment')));
      test('saleFinalize', () => expect(TefIPEndpoints.saleFinalize, equals('/sale/finalize')));
      test('saleCancel', () => expect(TefIPEndpoints.saleCancel, equals('/sale/cancel')));
    });

    group('parameterized endpoints', () {
      test('reversal builds correct path', () {
        const referenceId = 'abc-123';
        expect(
          TefIPEndpoints.reversal(referenceId),
          equals('/transaction/abc-123/reversal'),
        );
      });

      test('saleItemById builds correct path', () {
        const itemId = 'ITEM-001';
        expect(
          TefIPEndpoints.saleItemById(itemId),
          equals('/sale/item/ITEM-001'),
        );
      });

      test('saleItemCancel builds correct path', () {
        const itemId = 'ITEM-001';
        expect(
          TefIPEndpoints.saleItemCancel(itemId),
          equals('/sale/item/ITEM-001/cancel'),
        );
      });

      test('salePaymentById builds correct path', () {
        const paymentId = 'PGTO-001';
        expect(
          TefIPEndpoints.salePaymentById(paymentId),
          equals('/sale/payment/PGTO-001'),
        );
      });

      test('reversal with null referenceId includes null in path', () {
        expect(
          TefIPEndpoints.reversal(null),
          equals('/transaction/null/reversal'),
        );
      });
    });
  });
}
