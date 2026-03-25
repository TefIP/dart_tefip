import 'package:dart_tefip/src/core/enums/tef_ip_carousel_transition.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_installment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_question_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_sale_payment_type.dart';
import 'package:dart_tefip/src/core/enums/tef_ip_transaction_status.dart';
import 'package:test/test.dart';

void main() {
  group('TefIPSalePaymentType', () {
    test('has exactly 11 values', () {
      expect(TefIPSalePaymentType.values.length, equals(11));
    });

    test('contains all expected values', () {
      expect(TefIPSalePaymentType.values, containsAll([
        TefIPSalePaymentType.credit,
        TefIPSalePaymentType.debit,
        TefIPSalePaymentType.pix,
        TefIPSalePaymentType.money,
        TefIPSalePaymentType.voucher,
        TefIPSalePaymentType.gift,
        TefIPSalePaymentType.veroWallet,
        TefIPSalePaymentType.unknown,
        TefIPSalePaymentType.adm,
        TefIPSalePaymentType.cancel,
        TefIPSalePaymentType.cancelDigitalWallet,
      ]));
    });
  });

  group('TefIPTransactionStatus', () {
    test('has exactly 4 values', () {
      expect(TefIPTransactionStatus.values.length, equals(4));
    });

    test('contains all expected values', () {
      expect(TefIPTransactionStatus.values, containsAll([
        TefIPTransactionStatus.pending,
        TefIPTransactionStatus.paid,
        TefIPTransactionStatus.cancelled,
        TefIPTransactionStatus.unknown,
      ]));
    });
  });

  group('TefIPQuestionType', () {
    test('has exactly 14 values', () {
      expect(TefIPQuestionType.values.length, equals(14));
    });

    test('contains all expected values', () {
      expect(TefIPQuestionType.values, containsAll([
        TefIPQuestionType.list,
        TefIPQuestionType.button,
        TefIPQuestionType.text,
        TefIPQuestionType.phone,
        TefIPQuestionType.number,
        TefIPQuestionType.cpf,
        TefIPQuestionType.cnpj,
        TefIPQuestionType.cpfOrcnpj,
        TefIPQuestionType.email,
        TefIPQuestionType.cep,
        TefIPQuestionType.date,
        TefIPQuestionType.time,
        TefIPQuestionType.money,
        TefIPQuestionType.regex,
      ]));
    });
  });

  group('TefIPCarouselTransition', () {
    test('has exactly 3 values', () {
      expect(TefIPCarouselTransition.values.length, equals(3));
    });

    test('contains all expected values', () {
      expect(TefIPCarouselTransition.values, containsAll([
        TefIPCarouselTransition.fade,
        TefIPCarouselTransition.slide,
        TefIPCarouselTransition.none,
      ]));
    });
  });

  group('TefIPInstallmentType', () {
    test('has exactly 3 values', () {
      expect(TefIPInstallmentType.values.length, equals(3));
    });

    test('contains all expected values', () {
      expect(TefIPInstallmentType.values, containsAll([
        TefIPInstallmentType.single,
        TefIPInstallmentType.seller,
        TefIPInstallmentType.buyer,
      ]));
    });
  });
}
