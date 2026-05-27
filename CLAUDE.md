# dart_tefip

Dart/Flutter SDK for communicating with TEF IP payment terminals over HTTP.

## Code style
- Functions: 4-20 lines. Split if longer.
- Files: under 500 lines. Split by responsibility.
- One thing per function, one responsibility per module (SRP).
- Names: specific and unique. Avoid `data`, `handler`, `Manager`.
  Prefer names that return <5 grep hits in the codebase.
- Types: explicit. No `any`, no `Dict`, no untyped functions.
- No code duplication. Extract shared logic into a function/module.
- Early returns over nested ifs. Max 2 levels of indentation.
- Exception messages must include the offending value and expected shape.

## Comments
- Keep your own comments. Don't strip them on refactor — they carry
  intent and provenance.

## Tests

- Every new function gets a test. Bug fixes get a regression test.
- Mock external I/O (API, DB, filesystem) with named fake classes,
  not inline stubs.
- Tests must be F.I.R.S.T: fast, independent, repeatable,
  self-validating, timely.

## Dependencies
- Inject dependencies through constructor/parameter, not global/import.
- Wrap third-party libs behind a thin interface owned by this project.

## Structure
- Follow the framework's convention (Flutter).
- Prefer small focused modules over god files.
- Predictable paths: controller/model/view, src/lib/test, etc.

## Logging
- Structured JSON when logging for debugging / observability.
- Plain text only for user-facing CLI output.


## Project Overview

- **Package**: `dart_tefip` (pub.dev)
- **Type**: Dart/Flutter library package
- **Backend**: The server this SDK communicates with lives in the sibling repo `../tefip` (Flutter app with embedded Shelf HTTP server, runs on Android SmartPOS or Windows)
- **Purpose**: Typed HTTP client SDK for all TEF IP terminal operations — transactions, sales, printing, display, and interactive input

## Architecture

### Entry Point

`TefIP` is a singleton (`TefIP.instance`) that extends `TefIPClientBase`. All endpoints are accessed through getters:

```dart
TefIP.baseUrl = "http://localhost:8080";
TefIP.username = "admin";
TefIP.password = "1234";
final tefip = TefIP.instance;
```

### Key Layers

| Layer | Path | Responsibility |
|-------|------|---------------|
| Endpoint classes | `lib/src/instance/` | One class per endpoint group, accessed via `TefIP` getters |
| Network client | `lib/src/core/networking/tef_ip_network_client.dart` | Static `get<T>()`, `post<T>()`, `patch<T>()`, `delete<T>()`, and binary `getBytes()` |
| Models | `lib/src/core/models/` | Freezed + json_serializable, one folder per model |
| URL builder | `lib/src/core/builders/urls/tef_ip_url_builder.dart` | Prepends `baseUrl` to endpoint paths |
| Headers builder | `lib/src/core/builders/headers/tef_ip_headers_builder.dart` | Builds Basic Auth + Content-Type headers |
| Endpoint constants | `lib/src/core/constants/tef_ip_endpoints.dart` | Static finals for fixed paths, static methods for parameterized paths |
| Enums | `lib/src/core/enums/` | `TefIPTransactionType`, `TefIPSalePaymentType`, `TefIPQuestionType`, etc. |
| Exceptions | `lib/src/core/exceptions/` | `TefIPRequestException`, `TefIPUnexpectedException` |
| Converters | `lib/src/core/converters/` | Custom JSON converters (transaction type, images, details) |
| HTTP utils | `lib/src/core/utils/http/` | Platform-aware client (IO vs Web via conditional imports) |
| Config | `lib/src/instance/configs/tefip_configs.dart` | `baseUrl`, `requestsTimeOut` |

### Platform HTTP Client

Conditional imports select the right `http.Client` implementation at compile time:

```dart
import '../utils/http/http_client_default.dart'
    if (dart.library.js) '../utils/http/http_client_web.dart'
    if (dart.library.io) '../utils/http/http_client_io.dart';
```

### Endpoint Class Pattern

Every endpoint class is an `interface class` (immutable, protected) implementing `EndpointInterface`:

```dart
@immutable
@protected
interface class TefIPSomething implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.something;

  Future<SomeModel> post({required SomeRequestModel request, http.Client? client, Duration? timeout}) async {
    try {
      return await TefIPNetworkingClient.post<SomeModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(request.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SomeModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }
}
```

Binary endpoints (images) use `Content-Type: application/octet-stream` and pass `Uint8List` as `body`.

---

## All Endpoints

Complete reference of every getter on `TefIP.instance`:

| Getter | HTTP | Path | Request | Response |
|--------|------|------|---------|----------|
| `ask` | POST | `/ask` | `AskSingleQuestionRequestModel` | `AnswerModel` |
| `askForm` | POST | `/ask/form` | `AskFormRequestModel` | `List<AnswerModel>` |
| `askCancel` | POST | `/ask/cancel` | — | `SuccessResponseModel` |
| `displayImage` | POST | `/display/image` | `Uint8List` (octet-stream) | `SuccessResponseModel` |
| `displayText` | POST | `/display/text` | `DisplayTextRequestModel` | `SuccessResponseModel` |
| `displayCarousel` | POST | `/display/carousel` | `DisplayCarouselRequestModel` | `SuccessResponseModel` |
| `displayClear` | POST | `/display/clear` | — | `SuccessResponseModel` |
| `displayPop` | POST | `/display/pop` | — | `SuccessResponseModel` |
| `printImage` | POST | `/print/image` | `Uint8List` (octet-stream) | `SuccessResponseModel` |
| `printText` | POST | `/print/text` | `List<Map<String,dynamic>>` | `SuccessResponseModel` |
| `printXml` | POST | `/print/xml` | `String` (raw XML) | `SuccessResponseModel` |
| `status` | GET | `/status` | — | `StatusModel` |
| `info` | GET | `/info` | — | `InfoModel` |
| `restart` | POST | `/restart` | — | `StatusModel` |
| `transaction` | POST | `/transaction` | `TransactionRequestModel` | `TransactionResponseModel` |
| `transaction` | GET | `/transaction` | — | `List<TransactionModel>` |
| `transaction` | GET | `/transaction/{referenceId}` | — | `TransactionModel` |
| `reversal` | POST | `/transaction/{referenceId}/reversal` | — | `TransactionResponseModel` |
| `sale` | GET | `/sale` | — | `SaleCouponModel` |
| `sale` | POST | `/sale` | `SaleStartRequestModel` | `SaleCouponModel` |
| `sale` | PATCH | `/sale` | `SaleStartRequestModel` | `SaleCouponModel` |
| `sale` (clear) | DELETE | `/sale/clear` | — | `SaleCouponModel` |
| `saleItem` | POST | `/sale/item` | `SaleItemModel` | `SaleItemModel` |
| `saleItem` | PATCH | `/sale/item/{itemId}` | `SaleItemModel` | `SaleItemModel` |
| `saleItem` | DELETE | `/sale/item/{itemId}` | — | `SaleCouponModel` |
| `saleItem` (cancel) | POST | `/sale/item/{itemId}/cancel` | — | `SaleCouponModel` |
| `saleItem` (clear) | DELETE | `/sale/item/clear` | — | `SaleCouponModel` |
| `salePayment` | POST | `/sale/payment` | `SalePaymentModel` | `SalePaymentModel` |
| `salePayment` | PATCH | `/sale/payment/{paymentId}` | `SalePaymentModel` | `SalePaymentModel` |
| `salePayment` | DELETE | `/sale/payment/{paymentId}` | — | `SaleCouponModel` |
| `salePayment` (clear) | DELETE | `/sale/payment/clear` | — | `SaleCouponModel` |
| `saleDiscount` | POST | `/sale/discount` | `SaleDiscountModel` | `SaleDiscountModel` |
| `saleDiscount` | PATCH | `/sale/discount/{discountId}` | `SaleDiscountModel` | `SaleDiscountModel` |
| `saleDiscount` | DELETE | `/sale/discount/{discountId}` | — | `SaleCouponModel` |
| `saleDiscount` (clear) | DELETE | `/sale/discount/clear` | — | `SaleCouponModel` |
| `saleAddition` | POST | `/sale/addition` | `SaleAdditionModel` | `SaleAdditionModel` |
| `saleAddition` | PATCH | `/sale/addition/{additionId}` | `SaleAdditionModel` | `SaleAdditionModel` |
| `saleAddition` | DELETE | `/sale/addition/{additionId}` | — | `SaleCouponModel` |
| `saleAddition` (clear) | DELETE | `/sale/addition/clear` | — | `SaleCouponModel` |
| `saleFinalize` | POST | `/sale/finalize` | `SaleActionRequestModel?` | `SuccessResponseModel` |
| `saleCancel` | POST | `/sale/cancel` | `SaleActionRequestModel?` | `SuccessResponseModel` |
| `log` | GET | `/logs` | filter query params | `List<LogModel>` |
| `log` (zip) | GET | `/logs/zip/download` | filter query params | `Uint8List` |
| `log` (stream) | GET | `/logs/stream` | — | `Stream<LogModel>` (SSE) |
| `notification` | POST | `/notification` | `NotificationRequestModel` | `SuccessResponseModel` |

---

## Sale Flow

Complete lifecycle of a sale session:

```
1.  sale.post(request: ...)        POST /sale                  Start sale
2.  saleItem.post(item: ...)       POST /sale/item             Add items
3.  saleItem.patch(itemId, item)   PATCH /sale/item/{id}       Update item
4.  saleItem.delete(itemId)        DELETE /sale/item/{id}      Remove item
5.  saleItem.cancel(itemId)        POST /sale/item/{id}/cancel Mark item canceled
6.  salePayment.post(payment: ...) POST /sale/payment          Add payment
7.  salePayment.patch(id, payment) PATCH /sale/payment/{id}   Update payment
8.  salePayment.delete(paymentId)  DELETE /sale/payment/{id}  Remove payment
9.  saleDiscount.post(discount:..) POST /sale/discount         Add sale discount
10. saleAddition.post(addition:..) POST /sale/addition         Add sale addition
11. sale.patch(request: ...)       PATCH /sale                 Update sale metadata (anytime)
12. sale.clear()                   DELETE /sale/clear          Wipe all items/payments/coupons
13. saleFinalize.post()            POST /sale/finalize         Complete sale
    OR saleCancel.post()           POST /sale/cancel           Abort sale
```

Notes:
- `POST /sale` returns `SaleCouponModel` (active sale snapshot with items, payments, discounts, additions, and summary)
- `SaleStartRequestModel` has no `id` field — the backend manages sale identity internally
- `SalePaymentModel.type` uses the `tPag` JSON key (mapped via `@JsonKey(name: 'tPag')`)
- `SaleActionRequestModel` on finalize/cancel controls the result screen shown to the customer
- `SaleDiscountModel` and `SaleAdditionModel` provide **standardized CRUD** for coupons/discounts
- `SaleItemModel.discount` and `.addition` are **visual only** — they do not affect the sale total in summary

---

## Enums

### `TefIPTransactionType` — payment transaction type (tPag codes)

| Value | tPag code |
|-------|-----------|
| `money` | `01` |
| `credit` | `03` |
| `debit` | `04` |
| `pix` | `17` |
| `unknown` | `99` |

### `TefIPSalePaymentType` — sale display payment type

`credit`, `debit`, `pix`, `money`, `voucher`, `gift`, `veroWallet`, `adm`, `cancel`, `cancelDigitalWallet`, `unknown`

### `TefIPQuestionType` — terminal input question types

`LIST`, `BUTTON`, `TEXT`, `PHONE`, `NUMBER`, `CPF`, `CNPJ`, `CPFORCNPJ`, `EMAIL`, `CEP`, `DATE`, `TIME`, `MONEY`, `REGEX`

### `TefIPCarouselTransition`

`fade`, `slide`, `none`

### `TefIPInstallmentType`

`single`, `seller`, `buyer`

### `TefIPTransactionStatus`

`pending`, `paid`, `cancelled`, `unknown`

### `TefIPLogLevel` — log severity level

`fatal`, `error`, `warning`, `info`, `trace`, `path`, `debug`

### `TefIPLogSource` — log origin system

`app`, `router`, `http`

---

## Model Reference

### `SuccessResponseModel` — generic success response

| Field | Type | Description |
|-------|------|-------------|
| `message` | `String` | Confirmation message returned by the service |

### `StatusModel` — terminal runtime status (GET /status, POST /restart)

| Field | Type | Description |
|-------|------|-------------|
| `status` | `String` | Current service state (e.g. `running`, `stopped`) |
| `uptimeSeconds` | `int` | Seconds since the service started |
| `startedAt` | `String` | ISO-8601 timestamp of when the service started |

### `InfoModel` — terminal application info (GET /info)

| Field | Type | Description |
|-------|------|-------------|
| `appName` | `String` | Application name running on the terminal |
| `version` | `String` | Semantic version of the application |
| `build` | `String` | Internal build number or identifier |
| `platform` | `String` | OS/platform identifier (e.g. `android`, `windows`) |
| `locale` | `String` | Device locale (e.g. `pt-BR`) |
| `timeZone` | `String` | Device time zone identifier |
| `mode` | `String` | Execution mode (e.g. `production`, `homologation`) |
| `isActive` | `bool` | Whether the terminal is active |
| `isBusy` | `bool` | Whether the terminal is currently processing an operation |

### `SaleActionRequestModel` — optional finalize/cancel display config

| Field | Type | Description |
|-------|------|-------------|
| `message` | `String?` | Message shown on the display after finalize/cancel |
| `showMessage` | `bool` | Whether to show the message. Default: `true` |
| `showCloseButton` | `bool` | Whether to show the close button. Default: `true` |
| `buttonCloseText` | `String?` | Label for the close button |
| `messageInterval` | `int` | Duration the message is displayed, in milliseconds. Default: `3000` |

### `AskSingleQuestionRequestModel` — single question request (POST /ask)

| Field | Type | Description |
|-------|------|-------------|
| `parameters` | `AskParametersModel` | Global UI settings for the interaction |
| `question` | `AskQuestionModel` | The question to display on the terminal |

### `LogModel` — fields (GET /logs, SSE stream events)

| Field | Type | Description |
|-------|------|-------------|
| `id` | `int` | Log entry identifier |
| `level` | `TefIPLogLevel` | Severity level |
| `source` | `TefIPLogSource` | Origin system |
| `message` | `String` | Log message |
| `details` | `String?` | Extra context (optional) |
| `createdAt` | `DateTime?` | Creation timestamp (Unix → DateTime) |

### Log Filters — query params for `log.getAll()` and `log.downloadZip()`

| Param | Type | Description |
|-------|------|-------------|
| `level` | `TefIPLogLevel?` | Filter by severity |
| `source` | `TefIPLogSource?` | Filter by origin |
| `dateFrom` | `DateTime?` | Logs after this time |
| `dateTo` | `DateTime?` | Logs before this time |
| `limit` | `int?` | Max number of logs |
| `search` | `String?` | Full-text search in message and details |
| `includeDetails` | `bool?` | Include `details` field (default true) |

### `TransactionModel` — fields (GET /transaction, GET /transaction/{referenceId})

| Field | Type | Description |
|-------|------|-------------|
| `referenceId` | `String?` | External identifier for reconciliation |
| `type` | `TefIPTransactionType` | Transaction type. Default: `unknown` |
| `transactionStatus` | `TefIPTransactionStatus` | Current status. Default: `unknown` |
| `installmentType` | `TefIPInstallmentType` | Installment modality. Default: `single` |
| `amount` | `double` | Transaction amount. Default: `0.0` |
| `installments` | `int` | Number of installments. Default: `1` |
| `nsu` | `String?` | NSU returned by the acquirer |
| `txid` | `String?` | PIX transaction ID. Present only when `type == pix`; null for credit/debit |
| `cAut` | `String?` | Acquirer authorization code. Present for credit/debit; **null for PIX** |
| `createdAt` | `DateTime?` | Creation timestamp (Unix → DateTime) |
| `updatedAt` | `DateTime?` | Update timestamp (Unix → DateTime) |
| `paymentDetails` | `Map<String,dynamic>?` | Payment metadata |
| `reversalDetails` | `Map<String,dynamic>?` | Reversal metadata |

### `TransactionRequestModel` — fields (POST /transaction)

| Field | Type | Description |
|-------|------|-------------|
| `referenceId` | `String?` | External identifier for reconciliation. Default: `null` |
| `type` | `TefIPTransactionType` | Transaction type (`tPag` key). Default: `unknown` |
| `amount` | `double` | Transaction amount. Default: `0` |
| `installments` | `int` | Number of installments. Default: `1` |
| `installmentType` | `TefIPInstallmentType` | Installment modality. Default: `single` |
| `details` | `Map<String,dynamic>?` | Extra acquirer metadata — serialized via `TefIPDetailsConverter` |

### `TransactionResponseModel` — fields (POST /transaction — immediate acquirer response)

Mirrors `dj_pay_interface.TransactionResponse`:

| Field | Type | Description |
|-------|------|-------------|
| `nsu` | `String?` | NSU returned by the acquirer |
| `cnpj` | `String?` | Acquirer/issuer CNPJ |
| `txid` | `String?` | PIX transaction ID. Present only for PIX; null for credit/debit |
| `cAut` | `String?` | Authorization code. Present for credit/debit; **null for PIX** |
| `tBand` | `String?` | Card brand (e.g. Visa, Master) |
| `tPag` | `String?` | Payment type code returned by the acquirer |
| `message` | `String?` | Informational message |
| `details` | `Map<String,dynamic>?` | Additional structured data |

**PIX rule:** `txid` and `cAut` are mutually exclusive — when `type == pix`, `txid` is set and `cAut` is null; for credit/debit it is the inverse.

### `SaleItemModel` — fields (POST /sale/item, PATCH /sale/item/{itemId})

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String?` | External item identifier |
| `code` | `String` | Product code (e.g. EAN/barcode) |
| `description` | `String` | Description shown on the display |
| `canceled` | `bool` | Whether the item is canceled. Default: `false` |
| `quantity` | `double` | Item quantity |
| `unitPrice` | `double` | Unit price |
| `discount` | `double?` | Item-level discount — **visual only**, does not affect sale total |
| `addition` | `double?` | Item-level surcharge — **visual only**, does not affect sale total |
| `total` | `double` | Total value of the item |
| `additionalInfo` | `String?` | Supplementary information |

### `SalePaymentModel` — fields (POST /sale/payment, PATCH /sale/payment/{paymentId})

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String?` | External payment identifier |
| `type` | `TefIPSalePaymentType` | Payment type (`tPag` JSON key). Default: `unknown` |
| `description` | `String?` | Payment description shown on the display |
| `value` | `double` | Payment amount |
| `additionalInfo` | `String?` | Supplementary information |

### `SaleStartRequestModel` — sale metadata (POST /sale, PATCH /sale, nested in `SaleCouponModel.sale`)

| Field | Type | Description |
|-------|------|-------------|
| `customerDocument` | `String?` | Customer CPF/CNPJ |
| `customerName` | `String?` | Customer name shown on display |
| `sellerName` | `String?` | Seller name shown on display |
| `additionalInfo` | `String?` | Supplementary information |
| `total` | `num?` | Optional total amount to display on the sale screen |

### `SaleDiscountModel` — fields (POST /sale/discount, PATCH /sale/discount/{id})

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Coupon identifier (required) |
| `description` | `String?` | Label shown on display |
| `value` | `num` | Discount amount |
| `additionalInfo` | `String?` | Supplementary information |

### `SaleAdditionModel` — fields (POST /sale/addition, PATCH /sale/addition/{id})

| Field | Type | Description |
|-------|------|-------------|
| `id` | `String` | Addition identifier (required) |
| `description` | `String?` | Label shown on display |
| `value` | `num` | Surcharge amount |
| `additionalInfo` | `String?` | Supplementary information |

### `SaleSummaryModel` — computed totals (nested in `SaleCouponModel.summary`)

| Field | Type | Description |
|-------|------|-------------|
| `subtotal` | `double` | Sum of all item totals. Default: `0.0` |
| `surcharge` | `double` | Sale-level addition applied to total. Default: `0.0` |
| `discount` | `double` | Sale-level discount applied to total. Default: `0.0` |
| `itemDiscount` | `double` | Aggregate of item-level discounts (visual only). Default: `0.0` |
| `itemAddition` | `double` | Aggregate of item-level additions (visual only). Default: `0.0` |
| `total` | `double` | Final payable total. Default: `0.0` |

### `SaleCouponModel` — active sale snapshot (GET /sale)

| Field | Type | Description |
|-------|------|-------------|
| `sale` | `SaleStartRequestModel` | Sale metadata |
| `items` | `List<SaleItemModel>` | Items in the sale. Default: `[]` |
| `payments` | `List<SalePaymentModel>` | Payments in the sale. Default: `[]` |
| `discounts` | `List<SaleDiscountModel>` | Discount coupons applied to the sale. Default: `[]` |
| `additions` | `List<SaleAdditionModel>` | Surcharge additions applied to the sale. Default: `[]` |
| `summary` | `SaleSummaryModel` | Computed totals |

### `NotificationRequestModel` — fields (POST /notification)

| Field | Type | Description |
|-------|------|-------------|
| `title` | `String` | Notification title shown on the device |
| `message` | `String` | Notification body text |

---

## Models Pattern

Each model lives in its own folder under `lib/src/core/models/<name>/`:

```
<name>_model.dart          ← source: @freezed class with fromJson factory
<name>_model.freezed.dart  ← generated (never edit manually)
<name>_model.g.dart        ← generated (never edit manually)
```

All public models are exported via `lib/src/core/models/export.dart`.

---

## Exception Handling

| Exception | When | Fields |
|-----------|------|--------|
| `TefIPRequestException` | HTTP 4xx/5xx or non-2xx response | `statusCode`, `message`, `rawBody` |
| `TefIPUnexpectedException` | Any unhandled/unexpected error | `exception` |

Network `ClientException` (e.g. connection refused) is caught and re-thrown as `TefIPRequestException(statusCode: -1)`.

---

## Testing

### File locations

- Tests: `test/src/instance/<group>/` and `test/src/core/`
- Mocks: `testing/mocks/` (project root — **not** inside `test/`)
  - `testing/mocks/models/` — model fixture constants (e.g. `kSalePayment`, `kSaleStartRequest`, `kSaleItem`)
  - `testing/mocks/shared/` — shared fixtures (`kSuccessResponse`, `kBaseUrl`, `kUsername`, `kPassword`)
  - `testing/mocks/networking/` — `MockHttpClient` (extends `Mock implements http.Client`)

### Standard test pattern

```dart
// Arrange
when(() => kHttpClient.post(any(), headers: any(named: 'headers'), body: any(named: 'body'), encoding: any(named: 'encoding')))
    .thenAnswer((_) async => http.Response(jsonEncode(kSuccessResponse.toJson()), 200));

// Act
final result = await endpoint.post(request: kSomeRequest, client: kHttpClient);

// Assert
expect(result, equals(kSuccessResponse));
verify(() => kHttpClient.post(Uri.parse(expectedUrl), headers: any(named: 'headers'), body: jsonEncode(kSomeRequest.toJson()))).called(1);
```

Every endpoint test covers: success, `ClientException`, rethrown `TefIPRequestException`, and `TefIPUnexpectedException`.

---

## Common Commands

### Run tests
```bash
flutter test
```

### Code generation (freezed + json_serializable)
```bash
dart run build_runner build --delete-conflicting-outputs
```

### Watch mode
```bash
dart run build_runner watch --delete-conflicting-outputs
```

### Analyze
```bash
flutter analyze
```

### Format
```bash
dart format .
```

---

## Adding a New Endpoint

1. Create `lib/src/instance/<group>/tef_ip_<name>.dart` — endpoint class (copy pattern from any existing class)
2. Add endpoint constant to `lib/src/core/constants/tef_ip_endpoints.dart`
3. Add request/response models under `lib/src/core/models/<name>/` with `@freezed`
4. Run `dart run build_runner build --delete-conflicting-outputs`
5. Export models via `lib/src/core/models/export.dart`
6. Add getter on `TefIP` in `lib/src/instance/tef_ip.dart`
7. Add test file at `test/src/instance/<group>/tef_ip_<name>_test.dart`
8. Add model mock at `testing/mocks/models/<name>_mock.dart` if needed

---

## Conventions

- **Commits**: Conventional Commits with emoji prefix — `:rocket: feat:`, `:bug: fix:`, `:recycle: refactor:`, `:memo: docs:`, `:rotating_light: warning:`, `:bookmark: release:`
- **Versioning**: Semantic Versioning — breaking changes bump major
- **Naming**: `tef_ip_` prefix on all SDK classes and files; `k` prefix on test fixture constants
- **tPag codes**: `03` = credit, `04` = debit, `17` = PIX — always numeric strings, never alphabetic
- **Binary payloads**: image/print endpoints send raw `Uint8List` with `Content-Type: application/octet-stream`
- **No generated file edits**: Never manually edit `.freezed.dart` or `.g.dart` files
- **Backend reference**: When in doubt about what a field or endpoint does, check `../tefip/lib/src/api/resources/`
