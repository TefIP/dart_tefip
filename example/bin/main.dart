import 'package:dart_tefip/dart_tefip.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  final tefIP = TefIP.instance;

  final info = await tefIP.info.get();

  print(info);

  final status = await tefIP.status.get();

  print(status);

  final transactions = await tefIP.transaction.getAll();

  print(transactions);

  final transaction = await tefIP.transaction.get(
    referenceId: transactions.first.referenceId,
  );

  print(transaction);

  final referenceId = DateTime.now().toIso8601String();

  final postTransaction = await tefIP.transaction.post(
    transactionRequest: TransactionRequestModel(
      referenceId: referenceId,
      type: TefIPTransactionType.pix,
      amount: 777.77,
    ),
  );

  print(postTransaction);

  final reversalTransaction = await tefIP.reversal.post(
    referenceId: referenceId,
  );

  print(reversalTransaction);

  final revertedTransaction = await tefIP.transaction.get(
    referenceId: referenceId,
  );

  print(revertedTransaction);

  final printResult = await printImageFromUrl(
    'https://www.djsystem.com.br/wp-content/uploads/2025/03/banner-inicial-997x1024.png',
  );
  print(printResult);
}

Future<SuccessResponseModel> printImageFromUrl(String imageUrl) async {
  final response = await http.get(Uri.parse(imageUrl));

  if (response.statusCode != 200) {
    throw Exception();
  }

  final Uint8List imageBytes = response.bodyBytes;

  return await TefIP.instance.printImage.post(imageData: imageBytes);
}
