import 'package:dart_tefip/dart_tefip.dart';

import 'sale_item_model_mock.dart';
import 'sale_payment_model_mock.dart';
import 'sale_start_request_model_mock.dart';
import 'sale_summary_model_mock.dart';

final kSaleCoupon = SaleCouponModel(
  sale: kSaleStartRequest,
  items: [kSaleItem],
  payments: [kSalePayment],
  summary: kSaleSummary,
);
