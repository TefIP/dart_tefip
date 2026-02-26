## 1.0.4
* Refactored `QuestionResponseModel` to use `freezed`
* Updated `QuestionResponseModel` to abstract class with factory constructor
* Updated `TefIpAsk.post` return type from `SuccessResponseModel` to `QuestionResponseModel`
* Updated networking layer success parser to map response into `QuestionResponseModel`

## 1.0.3
* Updated project README.md

## 1.0.2
* Updated project description in pubspec.yaml

## 1.0.1
* Added example/README.md with usage instructions
* Updated repository link in the main README.md

## 1.0.0

* Initial stable release of `dart_tefip`
* Full support for TEF IP terminal communication
* Transaction endpoints:
  * PIX
  * Credit
  * Debit
  * Transaction query (single and list)
  * Reversal
* Terminal endpoints:
  * Info
  * Status
  * Restart (Android/iOS only – returns 403 otherwise)
* Printing endpoints:
  * Print text
  * Print image
  * Print XML
* Display endpoints:
  * Display text
  * Display image
  * Display carousel
  * Clear display
* Question endpoint for terminal input
* Centralized networking layer (`TefIPNetworkingClient`)
  * GET
  * GET list
  * POST
  * Optional raw response handling
* Configurable base URL (`TefIPConfigs.baseUrl`)
* Configurable request timeout (`TefIPConfigs.requestsTimeOut`)
* Structured exception handling:
  * `TefIPRequestException`
  * `TefIPUnexpectedException`
* Strongly typed request and response models
* Platform-aware HTTP client abstraction (IO/Web)
* Unit test coverage for endpoints and networking layer