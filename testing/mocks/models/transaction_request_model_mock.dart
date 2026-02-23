import 'package:dart_tefip/dart_tefip.dart';

import '../shared/reference_id_mock.dart';

final kTransactionRequestModel = TransactionRequestModel(
  referenceId: kReferenceId,
  type: TefIPTransactionType.pix,
  amount: 777.77,
);
