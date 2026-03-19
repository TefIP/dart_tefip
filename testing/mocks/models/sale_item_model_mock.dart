import 'package:dart_tefip/dart_tefip.dart';

const kSaleItemId = 'ITEM-001';

final kSaleItem = SaleItemModel(
  id: kSaleItemId,
  code: '7891000100103',
  description: 'Produto Exemplo',
  canceled: false,
  quantity: 2.0,
  unitPrice: 10.0,
  discount: 1.0,
  addition: 0.5,
  total: 19.50,
  additionalInfo: 'Cor azul',
);
