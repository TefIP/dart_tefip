import 'package:dart_tefip/dart_tefip.dart';

import '../shared/reference_id_mock.dart';

final kTransactionRequest = TransactionRequestModel(
  referenceId: kReferenceId,
  type: TefIPTransactionType.pix,
  amount: 777,
);
