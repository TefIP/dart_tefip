import 'dart:convert';
import 'dart:io';
import 'package:dart_tefip/dart_tefip.dart';
import 'dart:typed_data';

void main(List<String> arguments) async {
  final tefIP = TefIP.instance;

  // Get terminal info
  final info = await tefIP.info.get();
  print(info);

  // Get terminal status
  final status = await tefIP.status.get();
  print(status);

  // Retrieve all transactions
  final transactions = await tefIP.transaction.getAll();
  print(transactions);

  // Retrieve a specific transaction
  final transaction = await tefIP.transaction.get(
    referenceId: transactions.first.referenceId!,
  );
  print(transaction);

  // Create a new transaction
  final referenceId = DateTime.now().toIso8601String();
  final postTransaction = await tefIP.transaction.post(
    transactionRequest: TransactionRequestModel(
      referenceId: referenceId,
      type: TefIPTransactionType.pix,
      amount: 777,
    ),
  );
  print(postTransaction);

  // Perform a reversal
  final reversalTransaction = await tefIP.reversal.post(
    referenceId: referenceId,
  );
  print(reversalTransaction);

  // Verify transaction after reversal
  final revertedTransaction = await tefIP.transaction.get(
    referenceId: referenceId,
  );
  print(revertedTransaction);

  // Print an image
  final printImageResult = await tefIP.printImage.post(
    imageData: await _imageFromPathToBytes('assets/example.png'),
  );
  print(printImageResult);

  // Print text
  final printTextResult = await tefIP.printText.post(
    text: List<Map<String, dynamic>>.from(
      await _jsonFromPath('assets/print_text_example.json'),
    ),
  );
  print(printTextResult);

  // Print XML
  final printXmlResult = await tefIP.printXml.post(
    xml: await _xmlFromPath('assets/example.xml'),
  );
  print(printXmlResult);

  // Display carousel
  final carouselImages = await Future.wait([
    _imageFromPathToBase64('assets/example_carousel1.jpeg'),
    _imageFromPathToBase64('assets/example_carousel2.jpeg'),
    _imageFromPathToBase64('assets/example_carousel3.jpeg'),
  ]);

  final displayCarouselResult = await tefIP.displayCarousel.post(
    displayCarouselRequest: DisplayCarouselRequestModel(
      images: carouselImages,
      intervalMs: 3000,
      transition: TefIPCarouselTransition.fade,
      backgroundColor: 'white',
      showCloseButton: false,
    ),
  );
  print(displayCarouselResult);

  // Display a single image
  final displayImageResult = await tefIP.displayImage.post(
    imageData: await _imageFromPathToBytes('assets/example_display.png'),
  );
  print(displayImageResult);

  // Display text
  final displayTextResult = await tefIP.displayText.post(
    displayTextRequest: DisplayTextRequestModel(
      content: List<Map<String, dynamic>>.from(
        await _jsonFromPath('assets/display_text_example.json'),
      ),
      backgroundColor: 'white',
      showCloseButton: false,
    ),
  );
  print(displayTextResult);

  // Clear display
  final displayClearResult = await tefIP.displayClear.post();
  print(displayClearResult);

  // Ask a question
  final askParameters = AskParametersModel(
    showCancelButton: true,
  );

  final askResult = await tefIP.ask.post(
    questionRequest: AskSingleQuestionRequestModel(
      parameters: askParameters,
      question: AskQuestionModel(
        type: TefIPQuestionType.text,
      ),
    ),
  );

  print(askResult);

  // Ask form
  final askFormResult = await tefIP.askForm.post(
    form: AskFormRequestModel(
      parameters: askParameters,
      questions: [
        AskQuestionModel(
          type: TefIPQuestionType.text,
        ),
        AskQuestionModel(
          type: TefIPQuestionType.cnpj,
        ),
      ],
    ),
  );
  print(askFormResult);

  // Ask a question
  SuccessResponseModel? askCancelResult;
  tefIP.ask
      .post(
        questionRequest: AskSingleQuestionRequestModel(
          parameters: askParameters,
          question: AskQuestionModel(),
        ),
      )
      .catchError((_) => AnswerModel(id: 0, value: '', displayValue: ''));

  await Future.delayed(Duration(milliseconds: 500));
  askCancelResult = await tefIP.askCancel.post();

  print(askCancelResult);

  // Start a sale
  final saleResult = await tefIP.sale.post(
    request: SaleStartRequestModel(
      id: 'VENDA-001',
      customerName: 'Joao da Silva',
      sellerName: 'Maria Souza',
      additionalInfo: 'Mesa 12',
    ),
  );
  print(saleResult);

  // Add an item to the sale
  final addItemResult = await tefIP.sale.postItem(
    item: SaleItemModel(
      id: 'ITEM-001',
      code: '7891000100103',
      description: 'Produto Exemplo',
      quantity: 2.0,
      unitPrice: 10.0,
      total: 20.0,
    ),
  );
  print(addItemResult);

  // Update an item in the sale
  final updateItemResult = await tefIP.sale.patchItem(
    itemId: 'ITEM-001',
    item: SaleItemModel(
      id: 'ITEM-001',
      code: '7891000100103',
      description: 'Produto Exemplo Atualizado',
      quantity: 3.0,
      unitPrice: 10.0,
      total: 30.0,
    ),
  );
  print(updateItemResult);

  // Cancel an item in the sale
  final cancelItemResult = await tefIP.sale.cancelItem(
    itemId: 'ITEM-001',
  );
  print(cancelItemResult);

  // Remove an item from the sale
  final deleteItemResult = await tefIP.sale.deleteItem(
    itemId: 'ITEM-001',
  );
  print(deleteItemResult);

  // Add a payment to the sale
  final addPaymentResult = await tefIP.sale.postPayment(
    payment: SalePaymentModel(
      id: 'PGTO-001',
      type: TefIPSalePaymentType.money,
      description: 'Dinheiro',
      value: 30.0,
    ),
  );
  print(addPaymentResult);

  // Remove a payment from the sale
  final deletePaymentResult = await tefIP.sale.deletePayment(
    paymentId: 'PGTO-001',
  );
  print(deletePaymentResult);

  // Finalize the sale
  final finalizeResult = await tefIP.sale.finalize(
    params: SaleActionRequestModel(
      message: 'Venda finalizada!',
      showMessage: true,
      messageInterval: 3000,
    ),
  );
  print(finalizeResult);

  // Cancel the sale
  final cancelSaleResult = await tefIP.sale.cancel(
    params: SaleActionRequestModel(
      message: 'Venda cancelada.',
      showMessage: true,
      messageInterval: 3000,
    ),
  );
  print(cancelSaleResult);

  // Restart the terminal (will throw 403 for non-Android/iOS)
  try {
    final restartResult = await tefIP.restart.post();
    print(restartResult);
  } catch (e) {
    print(false);
  }
}

/// Helper function to read XML from path
Future<String> _xmlFromPath(String path) async {
  final file = File(path);
  return await file.readAsString();
}

/// Helper function to read JSON from path
Future<dynamic> _jsonFromPath(String path) async {
  final file = File(path);
  return jsonDecode(await file.readAsString());
}

/// Helper function to read image as bytes
Future<Uint8List> _imageFromPathToBytes(String path) async {
  final file = File(path);
  return await file.readAsBytes();
}

/// Helper function to read image and convert to Base64
Future<String> _imageFromPathToBase64(String path) async {
  return base64Encode(await _imageFromPathToBytes(path));
}
