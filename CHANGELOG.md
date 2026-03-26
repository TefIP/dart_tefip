## 1.1.1

### Added
- `txid: String?` on `TransactionModel` — PIX transaction ID returned by the acquirer; present only when `type == pix`, null for credit/debit
- `cAut: String?` on `TransactionModel` — authorization code returned by the acquirer; present for credit/debit, null for PIX
- `txid: String?`, `cAut: String?`, `cnpj: String?`, `tBand: String?`, `tPag: String?` on `TransactionResponseModel` — model now fully mirrors `dj_pay_interface.TransactionResponse`

### Changed
- Brand references renamed from "TefIP" to "TEF IP"

## 1.1.0

### Added
- New `displayPop` endpoint (`POST /display/pop`) to close the current display overlay
- New `salePayment.patch` and `salePayment.delete` methods — full CRUD for sale payments
- New `saleItem.patch` and `saleItem.delete` methods — full CRUD for sale items
- New `sale.patch` method to update sale metadata at any point during the sale flow

### Changed
- `SaleItemModel.id` and `SalePaymentModel.id` are now optional (`String?`) — backend manages IDs internally
- Removed `SaleCreatedResponse` model (sale creation now returns `SuccessResponseModel`)
- `SaleStartRequestModel` no longer exposes an `id` field

### Testing
- Added extensive unit tests for all models: `SaleItem`, `SalePayment`, `SaleStartRequest`, `SaleActionRequest`, `SaleMutationResponse`, `SuccessResponse`, `Transaction`, `TransactionRequest`, `AskFormRequest`, `AskOption`, `AskParameters`, `AskQuestion`, `AskSingleQuestionRequest`, `DisplayCarouselRequest`, `DisplayTextRequest`
- Added tests for enums (`TefIPTransactionType`, all other enums), converters (`details`, `images`, `transaction type`, `unix datetime`), exceptions, endpoint constants, and header builder
- Added tests for new `displayPop` and `salePayment` endpoints

## 1.0.8

### Added
- New `TefIPSale` endpoint for sale management (start, cancel, finalize, items, payments)
- New models: `SaleStartRequest`, `SaleActionRequest`, `SaleCreatedResponse`, `SaleMutationResponse`, `SaleItem`, `SalePayment`
- New enum `TefIPSalePaymentType` for sale payment types
- New tests for all sale endpoints

### Fixed
- Authentication header construction error in `TefIPHeadersBuilder`
- Updated `example/bin/main.dart` to reflect correct SDK usage

### Improved
- Refactored `TefIPNetworkingClient` with better error handling
- Updated Ask models (`ask_parameters`, `answer`) with improved structure
- General documentation and configuration updates (README.md, CLAUDE.md)

## 1.0.7
* Refactored `TefIPTransactionType` enum to carry the tPag code as a field (`tPag`) with a `fromTPag()` factory method
* Updated `TefIPTransactionTypeConverter` to use `fromTPag()` for deserialization and `object.tPag` for serialization (instead of `object.name`)
* Updated `TransactionRequestModel` to serialize/deserialize the transaction type under the `tPag` JSON key (instead of `type`)

## 1.0.6
* Updated `TefIPTransactionTypeConverter` to accept tPag numerical codes (`03`, `04`, `17`, `99`) instead of alphabetic codes (`CC`, `CD`, `PX`, `XX`)
* Updated `TefIPTransactionType` `@JsonValue` annotations to use tPag numerical codes
* Fixed `AnswerModel.displayValue` parsing using `@JsonKey(readValue:)` instead of manual JSON manipulation in `fromJson`

## 1.0.5
* Added `askCancel` endpoint to cancel ongoing questions
* Refactored question models (`AnswerModel`, `AskQuestionModel`, `AskParametersModel`)
* Removed legacy models (`QuestionOptionModel`, `QuestionRequestModel`, `QuestionResponseModel`)

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