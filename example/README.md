## 1. Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  dart_tefip: ^1.0.0
```

```dart
import 'package:dart_tefip/dart_tefip.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
```

## 2. Initialization

```dart
void main() async {
  final tefIP = TefIP.instance;
  print('TEF IP SDK initialized.');
}
```

## 3. Terminal Information and Status

```dart
final info = await tefIP.info.get();
print('Terminal info: ${info.toString()}');

final status = await tefIP.status.get();
print('Terminal status: ${status.toString()}');
```

## 4. Transactions

```dart
// Retrieve all transactions
final transactions = await tefIP.transaction.getAll();
print('Total transactions: ${transactions.length}');

// Retrieve a specific transaction
if (transactions.isNotEmpty) {
  final tx = await tefIP.transaction.get(
    referenceId: transactions.first.referenceId,
  );
  print('Transaction found: ${tx.referenceId}');
}

// Create a new PIX transaction
final newTransaction = await tefIP.transaction.post(
  transactionRequest: TransactionRequestModel(
    referenceId: 'REF_${DateTime.now().millisecondsSinceEpoch}',
    type: TefIPTransactionType.pix,
    amount: 77.77,
  ),
);
print('Transaction created: ${newTransaction.referenceId}');
```

## 5. Reversal

```dart
try {
  final reversal = await tefIP.reversal.post(referenceId: 'REF_12345');
  print('Reversal completed successfully.');
} on TefIPRequestException catch (e) {
  print('Reversal error: ${e.message} (code ${e.statusCode})');
}
```

## 6. Printing

### Helper functions

```dart
Future<Uint8List> loadImage(String path) async {
  final file = File(path);
  return await file.readAsBytes();
}

Future<List<Map<String, dynamic>>> loadJson(String path) async {
  final file = File(path);
  final content = await file.readAsString();
  return List<Map<String, dynamic>>.from(jsonDecode(content));
}

Future<String> loadXml(String path) async {
  final file = File(path);
  return await file.readAsString();
}
```

### Usage

```dart
// Print image
final imageBytes = await loadImage('assets/example.png');
await tefIP.printImage.post(imageData: imageBytes);

// Print text (JSON)
final textJson = await loadJson('assets/print_text_example.json');
await tefIP.printText.post(text: textJson);

// Print XML
final xml = await loadXml('assets/example.xml');
await tefIP.printXml.post(xml: xml);
```

## 7. Terminal Display

```dart
// Display image
final imgDisplay = await loadImage('assets/example_display.png');
await tefIP.displayImage.post(imageData: imgDisplay);

// Display text or carousel
final textDisplay = await loadJson('assets/display_text_example.json');
await tefIP.displayText.post(
  displayTextRequest: DisplayTextRequestModel(
    content: textDisplay,
    backgroundColor: 'white',
    showCloseButton: false,
  ),
);

// Clear screen
await tefIP.displayClear.post();
```

## 8. User Input

```dart
final answer = await tefIP.ask.post(
  questionRequest: QuestionRequestModel(
    type: TefIPQuestionType.cpfOrcnpj,
  ),
);
print('User input: $answer');
```

## 9. Terminal Restart (Android/iOS only)

```dart
try {
  await tefIP.restart.post();
  print('Terminal restarted.');
} catch (e) {
  print('Restart not allowed on this device: $e');
}
```
