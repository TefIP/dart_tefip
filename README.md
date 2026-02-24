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

[![Version](https://img.shields.io/github/v/release/P-Sousa/dart_tefip?style=plastic)](https://pub.dev/packages/dart_tefip)
[![Pub Points](https://img.shields.io/pub/points/dart_tefip?label=pub%20points\&style=plastic)](https://pub.dev/packages/dart_tefip/score)
[![Dart](https://img.shields.io/badge/language-dart-blue?style=plastic)](https://dart.dev/)

</div>

<br>

---

<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#how-to-use">How to Use</a></li>
    <li><a href="#features">Features</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
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
* Restart terminals (returns 403 on non-Android/iOS devices by business rules)

The SDK uses a consistent exception handling pattern:

* `TefIPRequestException` for network or endpoint errors
* `TefIPUnexpectedException` for unhandled exceptions

The goal is to centralize communication with TEF IP devices with minimal boilerplate.

<i>This project is distributed under the MIT License. See `LICENSE` for more information.</i>

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

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## How to Use

Initialize the terminal instance:

```dart
final tefIP = TefIP.instance;
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

Perform a reversal:

```dart
final reversalTransaction = await tefIP.reversal.post(referenceId: '12345');
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

### Display

Display images, carousels, or text:

```dart
final displayImageResult = await tefIP.displayImage.post(
  imageData: await _imageFromPathToBytes('assets/example_display.png'),
);

final displayTextResult = await tefIP.displayText.post(
  displayTextRequest: DisplayTextRequestModel(
    content: List<Map<String, dynamic>>.from(await _jsonFromPath('assets/display_text_example.json')),
    backgroundColor: 'white',
    showCloseButton: false,
  ),
);

final displayClearResult = await tefIP.displayClear.post();
```

Ask for user input:

```dart
final askResult = await tefIP.ask.post(
  questionRequest: QuestionRequestModel(type: TefIPQuestionType.cpfOrcnpj),
);
```

Restart terminal:

```dart
try {
  final restartResult = await tefIP.restart.post();
} catch (e) {
  print('Restart not allowed on this device.');
}
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Features

* ✅ Transaction management (pix, debit, credit)
* ✅ Reversal support
* ✅ Terminal info and status queries
* ✅ Display text, image, and carousel
* ✅ Printing: text, images, XML
* ✅ Asking user input via terminal
* ✅ Restart terminal (Android/iOS only)
* ✅ Consistent exception handling (`TefIPRequestException`, `TefIPUnexpectedException`)
* ✅ Async operations

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contributing

Contributions are welcome. Fork the repo, create a branch, commit, and submit a pull request. Follow [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0) and [Semantic Versioning](https://semver.org/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contact

* GitHub: [DJSystem](https://github.com/TefIP)
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
