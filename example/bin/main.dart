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
    referenceId: transactions.first.referenceId,
  );
  print(transaction);

  // Create a new transaction
  final referenceId = DateTime.now().toIso8601String();
  final postTransaction = await tefIP.transaction.post(
    transactionRequest: TransactionRequestModel(
      referenceId: referenceId,
      type: TefIPTransactionType.pix,
      amount: 777.77,
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
  final askResult = await tefIP.ask.post(
    questionRequest: QuestionRequestModel(type: TefIPQuestionType.cpfOrcnpj),
  );
  print(askResult);

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
