import 'package:dart_tefip/dart_tefip.dart';

const kSalePaymentId = 'PGTO-001';

final kSalePayment = SalePaymentModel(
  id: kSalePaymentId,
  type: TefIPSalePaymentType.money,
  description: 'Dinheiro',
  value: 20.0,
  additionalInfo: 'Troco para R\$ 50,00',
);
