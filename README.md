<a name="readme-top"></a>

<h1 align="center">DART_TEFIP</h1>

<br />

<p align="center">
  Dart SDK for communicating with TEF IP terminals, enabling transactions, printing, and display management.  
  <br />
  <a href="https://pub.dev/packages/dart_tefip"><strong>Explore the docs »</strong></a>
  <br />
  <br />
  <a href="https://github.com/P-Sousa/dart_tefip/issues">Report Bug</a>
  ·
  <a href="https://github.com/P-Sousa/dart_tefip/pulls">Request Feature</a>
</p>

<br>

<div align='center'>

[![pub version](https://img.shields.io/pub/v/dart_tefip.svg?style=plastic)](https://pub.dev/packages/dart_tefip)
[![Version](https://img.shields.io/github/v/release/TefIP/dart_tefip?style=plastic)](https://github.com/TefIP/dart_tefip/releases)
[![Dart](https://img.shields.io/badge/language-dart-blue?style=plastic)](https://dart.dev/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

<br>

---

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#platform-support">Platform Support</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#how-to-use">How to Use</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

---

## About The Project

`dart_tefip` is a Dart SDK for interacting with TEF IP payment terminals. It provides a structured way to:

* Perform transactions (`pix`, `credit`, `debit`) and reversals
* Query transaction status and terminal info
* Display text, images, and carousels on the terminal
* Print text, images, or XML documents
* Ask user input through terminal questions
* Manage sales: items, payments, finalization, and cancellation
* Send local push notifications to the terminal device
* Restart terminals (returns 403 on non-Android/iOS devices by business rules)

The SDK uses a consistent exception handling pattern:

* `TefIPRequestException` for network or endpoint errors
* `TefIPUnexpectedException` for unhandled exceptions

The goal is to centralize communication with TEF IP devices with minimal boilerplate.

<i>This project is distributed under the MIT License. See `LICENSE` for more information.</i>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Platform Support

| Android | iOS | Web | macOS | Windows | Linux |
|:-------:|:---:|:---:|:-----:|:-------:|:-----:|
| ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Getting Started

Add `dart_tefip` to your project:

```yaml
dependencies:
  dart_tefip: x.x.x
```

Or using Dart Pub:

```
dart pub add dart_tefip
```

Requires Dart SDK `>=3.8.0`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## How to Use

Configure the connection and initialize the instance:

```dart
TefIP.baseUrl = "http://localhost:8080";
TefIP.username = "admin";
TefIP.password = "1234";

final tefIP = TefIP.instance;
```

### Timeout

By default, requests wait indefinitely — suitable for TEF IP terminals that
may take an unpredictable amount of time to respond (e.g., waiting for payment
confirmation on the physical terminal).

To apply a per-call timeout, pass a `timeout` to any endpoint method that accepts it:

```dart
final result = await tefIP.transaction.post(
  transactionRequest: TransactionRequestModel(
    referenceId: '12345',
    type: TefIPTransactionType.pix,
    amount: 100.00,
  ),
  timeout: const Duration(minutes: 2),
);
```

### Error Handling

All endpoints throw typed exceptions — wrap calls with a `try/catch`:

```dart
try {
  final result = await tefIP.transaction.post(
    transactionRequest: TransactionRequestModel(
      referenceId: '12345',
      type: TefIPTransactionType.pix,
      amount: 100.00,
    ),
  );
} on TefIPRequestException catch (e) {
  // HTTP 4xx/5xx or connection refused (statusCode == -1)
  print('Request error ${e.statusCode}: ${e.message}');
  print('Raw body: ${e.rawBody}');
} on TefIPUnexpectedException catch (e) {
  // Unhandled/unexpected error
  print('Unexpected error: ${e.exception}');
}
```

### Terminal Info & Status

```dart
final info = await tefIP.info.get();
final status = await tefIP.status.get();
```

### Transactions

Get all transactions:

```dart
final transactions = await tefIP.transaction.getAll();
```

Get a single transaction:

```dart
final transaction = await tefIP.transaction.get(referenceId: transactions.first.referenceId);
```

Create a new transaction:

```dart
final postTransaction = await tefIP.transaction.post(
  transactionRequest: TransactionRequestModel(
    referenceId: '12345',
    type: TefIPTransactionType.pix,
    amount: 777.77,
  ),
);
```

Access acquirer fields from the response:

```dart
// PIX — access the txid returned by the acquirer
print(postTransaction.txid); // e.g. "abc123txid"

// Credit/debit — access the authorization code
print(postTransaction.cAut); // e.g. "123456"

// All transaction types — access the acquirer that processed the payment
print(postTransaction.acquirer); // e.g. "Cielo"
```

Perform a reversal:

```dart
final reversalTransaction = await tefIP.reversal.post(referenceId: '12345');
```

### Sale

Start a sale:

```dart
await tefIP.sale.post(
  request: SaleStartRequestModel(
    customerName: 'João Silva',
    total: 99.90, // optional — displayed on the sale screen
  ),
);
```

Get the current active sale state:

```dart
final coupon = await tefIP.sale.get();
```

Update an active sale:

```dart
await tefIP.sale.patch(
  request: SaleStartRequestModel(...),
);
```

Add an item:

```dart
await tefIP.saleItem.post(item: SaleItemModel(...));
```

Update an item:

```dart
await tefIP.saleItem.patch(itemId: 'ITEM-001', item: SaleItemModel(...));
```

Remove an item:

```dart
await tefIP.saleItem.delete(itemId: 'ITEM-001');
```

Cancel an item:

```dart
await tefIP.saleItem.cancel(itemId: 'ITEM-001');
```

Add a payment:

```dart
await tefIP.salePayment.post(payment: SalePaymentModel(...));
```

Update a payment:

```dart
await tefIP.salePayment.patch(paymentId: 'PGTO-001', payment: SalePaymentModel(...));
```

Remove a payment:

```dart
await tefIP.salePayment.delete(paymentId: 'PGTO-001');
```

Clear all payments:

```dart
await tefIP.salePayment.clear();
```

Manage sale discounts:

```dart
await tefIP.saleDiscount.post(
  discount: SaleDiscountModel(
    id: 'DESC-1',
    description: 'Desconto promocional',
    value: 10.0,
  ),
);
```

Update a discount:

```dart
await tefIP.saleDiscount.patch(
  discountId: 'DESC-1',
  discount: SaleDiscountModel(id: 'DESC-1', value: 15.0),
);
```

Remove a discount:

```dart
await tefIP.saleDiscount.delete(discountId: 'DESC-1');
```

Clear sale discounts:

```dart
await tefIP.saleDiscount.clear();
```

Manage sale additions:

```dart
await tefIP.saleAddition.post(
  addition: SaleAdditionModel(
    id: 'TAXA-1',
    description: 'Taxa de serviço',
    value: 5.0,
  ),
);
```

Update an addition:

```dart
await tefIP.saleAddition.patch(
  additionId: 'TAXA-1',
  addition: SaleAdditionModel(id: 'TAXA-1', value: 7.5),
);
```

Remove an addition:

```dart
await tefIP.saleAddition.delete(additionId: 'TAXA-1');
```

Clear sale additions:

```dart
await tefIP.saleAddition.clear();
```

Clear the sale (removes all items, payments, etc., returning to an empty active sale):

```dart
await tefIP.sale.clear();
```

Finalize the sale:

```dart
await tefIP.saleFinalize.post();

// Optional: control what the terminal displays after finalization
await tefIP.saleFinalize.post(
  params: SaleActionRequestModel(
    message: 'Obrigado!',
    messageInterval: 3000,
  ),
);
```

Cancel the sale:

```dart
await tefIP.saleCancel.post();

// Optional: control what the terminal displays after cancellation
await tefIP.saleCancel.post(
  params: SaleActionRequestModel(
    message: 'Venda cancelada.',
    messageInterval: 3000,
  ),
);
```

### Printing

Print an image:

```dart
final result = await tefIP.printImage.post(imageData: await _imageFromPathToBytes('assets/example.png'));
```

Print text:

```dart
final result = await tefIP.printText.post(
  text: List<Map<String, dynamic>>.from(await _jsonFromPath('assets/print_text_example.json')),
);
```

Print XML:

```dart
final result = await tefIP.printXml.post(xml: await _xmlFromPath('assets/example.xml'));
```

Print ACBr content:

```dart
await TefIP.instance.printAcbr.post(
  content: '</ce><n>TEF IP</n>',
);
```

### Display

Display images, carousels, or text:

```dart
final displayImageResult = await tefIP.displayImage.post(
  imageData: await _imageFromPathToBytes('assets/example_display.png'),
  showCloseButton: false,
);

final displayTextResult = await tefIP.displayText.post(
  displayTextRequest: DisplayTextRequestModel(
    content: List<Map<String, dynamic>>.from(await _jsonFromPath('assets/display_text_example.json')),
    backgroundColor: 'white',
    showCloseButton: false,
  ),
);

final displayClearResult = await tefIP.displayClear.post();

final displayPopResult = await tefIP.displayPop.post();
```

For a carousel, `DisplayCarouselRequestModel.images` accepts both base64
strings and HTTP(S) image URLs.

### Ask

Ask for user input (single question):

```dart
final askResult = await tefIP.ask.post(
  questionRequest: AskSingleQuestionRequestModel(
    question: AskQuestionModel(type: TefIPQuestionType.cpfOrcnpj),
    parameters: AskParametersModel(),
  ),
);
```

Ask for user input (multiple questions form):

```dart
final askFormResult = await tefIP.askForm.post(
  form: AskFormRequestModel(
    questions: [
      AskQuestionModel(type: TefIPQuestionType.cpfOrcnpj),
      AskQuestionModel(type: TefIPQuestionType.text),
    ],
    parameters: AskParametersModel(),
  ),
);
```

Cancel an ongoing ask request:

```dart
final cancelResult = await tefIP.askCancel.post();
```

Restart terminal:

```dart
try {
  final restartResult = await tefIP.restart.post();
} catch (e) {
  print('Restart not allowed on this device.');
}
```

### Logs

Get all logs:

```dart
final logs = await tefIP.log.getAll();
```

Log timestamps received as Unix values are converted to `DateTime` on
`LogModel.createdAt`.

With filters:

```dart
final logs = await tefIP.log.getAll(
  level: TefIPLogLevel.error,
  limit: 50,
);
```

Stream logs in real time (SSE):

```dart
tefIP.log.stream().listen((log) {
  print('[${log.level.name}] ${log.message}');
});
```

Download logs as ZIP archive:

```dart
final zipBytes = await tefIP.log.downloadZip();
```

### Notification

Send a local push notification to the terminal device:

```dart
await tefIP.notification.post(
  request: NotificationRequestModel(
    title: 'Sale completed',
    message: 'Your order has been processed successfully.',
  ),
);
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Features

* ✅ Transaction management (pix, debit, credit)
* ✅ Reversal support
* ✅ Sale management (items, payments, finalize, cancel)
* ✅ Sale discount and addition management
* ✅ Terminal info and status queries
* ✅ Display text, image, and carousel
* ✅ Printing: text, images, XML, and ACBr content
* ✅ Question endpoint for terminal input (single and form)
* ✅ Cancel terminal input
* ✅ Restart terminal (Android/iOS only)
* ✅ Log retrieval, filtering, download, and real-time streaming
* ✅ Local push notification to the terminal device
* ✅ Consistent exception handling (`TefIPRequestException`, `TefIPUnexpectedException`)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contributing

Contributions are welcome. Fork the repo, create a branch, commit, and submit a pull request. Follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0) and [Semantic Versioning](https://semver.org/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contact

* GitHub: [TEF IP](https://github.com/TefIP)
* Website: https://www.djsystem.com.br

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---


## Maintained by

<p align="center">
  <a href="https://www.djsystem.com.br/">
    <img src="https://avatars.githubusercontent.com/u/85188542?s=200&v=4" />
    <p align="center">Built and maintained by DJSYSTEM.</p>
  </a>
</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>
