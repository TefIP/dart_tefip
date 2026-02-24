import 'package:dart_tefip/dart_tefip.dart';
import '../shared/reference_id_mock.dart';

final kTransaction = TransactionModel(
  referenceId: kReferenceId,
  transactionStatus: TefIPTransactionStatus.cancelled,
  type: TefIPTransactionType.pix,
  amount: 777,
  installments: 1,
  installmentType: TefIPInstallmentType.single,
  nsu: '777',
  paymentDetails: {
    'payment': 'pix',
    'total': 777,
  },
  reversalDetails: {
    'cancelled': true,
    'nsu': '777',
  },
);
