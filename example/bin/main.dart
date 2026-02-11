import 'package:dart_tefip/dart_tefip.dart';

void main(List<String> arguments) async {
  final info = await TefIP.instance.info.get();

  print(info);

  final status = await TefIP.instance.status.get();

  print(status);

  final transactions = await TefIP.instance.transaction.getAll();

  print(transactions);

  final transaction = await TefIP.instance.transaction.get(
    referenceId: transactions.first.referenceId,
  );

  print(transaction);

  final referenceId = DateTime.now().toIso8601String();

  final postTransaction = await TefIP.instance.transaction.post(
    transactionRequest: TransactionRequestModel(
      referenceId: referenceId,
      type: TefIPTransactionType.pix,
      amount: 777.77,
    ),
  );

  print(postTransaction);

  final reversalTransaction = await TefIP.instance.reversal.post(
    referenceId: referenceId,
  );

  print(reversalTransaction);

  final revertedTransaction = await TefIP.instance.transaction.get(
    referenceId: referenceId,
  );

  print(revertedTransaction);
}
