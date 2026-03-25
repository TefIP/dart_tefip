# dart_tefip

Dart/Flutter SDK for communicating with TEF IP payment terminals over HTTP.

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
| Network client | `lib/src/core/networking/tef_ip_network_client.dart` | Static `get<T>()`, `post<T>()`, `patch<T>()`, `delete<T>()` |
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
| `sale` | POST | `/sale` | `SaleStartRequestModel` | `SuccessResponseModel` |
| `sale` | PATCH | `/sale` | `SaleStartRequestModel` | `SuccessResponseModel` |
| `saleItem` | POST | `/sale/item` | `SaleItemModel` | `SaleMutationResponseModel` |
| `saleItem` | PATCH | `/sale/item/{itemId}` | `SaleItemModel` | `SaleMutationResponseModel` |
| `saleItem` | DELETE | `/sale/item/{itemId}` | — | `SaleMutationResponseModel` |
| `saleItem` (cancel) | POST | `/sale/item/{itemId}/cancel` | — | `SaleMutationResponseModel` |
| `salePayment` | POST | `/sale/payment` | `SalePaymentModel` | `SaleMutationResponseModel` |
| `salePayment` | PATCH | `/sale/payment/{paymentId}` | `SalePaymentModel` | `SaleMutationResponseModel` |
| `salePayment` | DELETE | `/sale/payment/{paymentId}` | — | `SaleMutationResponseModel` |
| `saleFinalize` | POST | `/sale/finalize` | `SaleActionRequestModel?` | `SuccessResponseModel` |
| `saleCancel` | POST | `/sale/cancel` | `SaleActionRequestModel?` | `SuccessResponseModel` |

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
9.  sale.patch(request: ...)       PATCH /sale                 Update sale metadata (anytime)
10. saleFinalize.post()            POST /sale/finalize         Complete sale
    OR saleCancel.post()           POST /sale/cancel           Abort sale
```

Notes:
- `POST /sale` returns `SuccessResponseModel` (no `saleId` in response)
- `SaleStartRequestModel` has no `id` field — the backend manages sale identity internally
- `SalePaymentModel.type` uses the `tPag` JSON key (mapped via `@JsonKey(name: 'tPag')`)
- `SaleActionRequestModel` on finalize/cancel controls the result screen shown to the customer

---

## Enums

### `TefIPTransactionType` — payment transaction type (tPag codes)

| Value | tPag code |
|-------|-----------|
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
  - `testing/mocks/shared/` — shared fixtures (`kSuccessResponse`, `kBaseUrl`, `kUsername`, `kPassword`, `kSuccessResponse`)
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
