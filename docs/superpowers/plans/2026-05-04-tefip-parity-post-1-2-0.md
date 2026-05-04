# TEFIP Post-1.2.0 Parity Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Bring `dart_tefip` (current release: `1.2.0`, dated 2026-04-30) to parity with the sibling `tefip` API surface (`1.5.5+7`) for missing sale operations and documentation, while fixing log ZIP binary handling.

**Architecture:** Keep backwards-compatible public API where possible by adding new endpoint clients and additive methods instead of breaking existing signatures. Model layer follows existing `freezed` + `json_serializable` patterns, and instance layer mirrors current endpoint class conventions. Documentation updates must align README, example usage, and changelog with the new public surface.

**Tech Stack:** Dart, Flutter package tooling, `http`, `freezed`, `json_serializable`, `test`, `mocktail`.

---

### Task 1: Add Missing Endpoint Constants and Contract Tests

**Files:**
- Modify: `lib/src/core/constants/tef_ip_endpoints.dart`
- Modify: `test/src/core/constants/tef_ip_endpoints_test.dart`

- [ ] **Step 1: Write failing endpoint tests for missing sale paths**

```dart
test('saleClear', () => expect(TefIPEndpoints.saleClear, equals('/sale/clear')));
test('salePaymentClear', () => expect(TefIPEndpoints.salePaymentClear, equals('/sale/payment/clear')));
test('saleDiscount', () => expect(TefIPEndpoints.saleDiscount, equals('/sale/discount')));
test('saleAddition', () => expect(TefIPEndpoints.saleAddition, equals('/sale/addition')));

test('saleDiscountById builds correct path', () {
  expect(TefIPEndpoints.saleDiscountById('DESC-1'), equals('/sale/discount/DESC-1'));
});

test('saleAdditionById builds correct path', () {
  expect(TefIPEndpoints.saleAdditionById('ACR-1'), equals('/sale/addition/ACR-1'));
});
```

- [ ] **Step 2: Run test to verify it fails**

Run: `rtk powershell -Command "flutter test test/src/core/constants/tef_ip_endpoints_test.dart"`
Expected: FAIL with undefined members on `TefIPEndpoints`.

- [ ] **Step 3: Implement constants and path builders**

```dart
static final String saleClear = '/sale/clear';
static final String salePaymentClear = '/sale/payment/clear';
static final String saleDiscount = '/sale/discount';
static final String saleAddition = '/sale/addition';

static String saleDiscountById(String discountId) => '/sale/discount/$discountId';
static String saleAdditionById(String additionId) => '/sale/addition/$additionId';
```

- [ ] **Step 4: Run test to verify it passes**

Run: `rtk powershell -Command "flutter test test/src/core/constants/tef_ip_endpoints_test.dart"`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add lib/src/core/constants/tef_ip_endpoints.dart test/src/core/constants/tef_ip_endpoints_test.dart
git commit -m "feat: add missing sale endpoint constants for parity"
```

### Task 2: Introduce Sale Discount/Addition Models and Tests

**Files:**
- Create: `lib/src/core/models/sale_discount/sale_discount_model.dart`
- Create: `lib/src/core/models/sale_addition/sale_addition_model.dart`
- Modify: `lib/src/core/models/export.dart`
- Create: `test/src/core/models/sale_discount_model_test.dart`
- Create: `test/src/core/models/sale_addition_model_test.dart`
- Create: `testing/mocks/models/sale_discount_model_mock.dart`
- Create: `testing/mocks/models/sale_addition_model_mock.dart`

- [ ] **Step 1: Write failing tests for JSON serialization and equality**

```dart
test('SaleDiscountModel fromJson parses correctly', () {
  final model = SaleDiscountModel.fromJson({
    'id': 'DESC-001',
    'description': 'Desconto fidelidade',
    'value': 10.5,
    'additionalInfo': 'Cupom cliente',
  });
  expect(model.id, 'DESC-001');
  expect(model.value, 10.5);
});
```

```dart
test('SaleAdditionModel round-trip preserves fields', () {
  final original = SaleAdditionModel(
    id: 'ACR-001',
    description: 'Taxa serviço',
    value: 5.0,
    additionalInfo: '10%',
  );
  final parsed = SaleAdditionModel.fromJson(original.toJson());
  expect(parsed, equals(original));
});
```

- [ ] **Step 2: Run tests to verify they fail**

Run: `rtk powershell -Command "flutter test test/src/core/models/sale_discount_model_test.dart test/src/core/models/sale_addition_model_test.dart"`
Expected: FAIL because models do not exist yet.

- [ ] **Step 3: Implement models and export them**

```dart
@freezed
abstract class SaleDiscountModel with _$SaleDiscountModel {
  const factory SaleDiscountModel({
    required String id,
    String? description,
    required num value,
    String? additionalInfo,
  }) = _SaleDiscountModel;

  factory SaleDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$SaleDiscountModelFromJson(json);
}
```

```dart
@freezed
abstract class SaleAdditionModel with _$SaleAdditionModel {
  const factory SaleAdditionModel({
    required String id,
    String? description,
    required num value,
    String? additionalInfo,
  }) = _SaleAdditionModel;

  factory SaleAdditionModel.fromJson(Map<String, dynamic> json) =>
      _$SaleAdditionModelFromJson(json);
}
```

- [ ] **Step 4: Generate code and run tests**

Run: `rtk powershell -Command "flutter pub run build_runner build --delete-conflicting-outputs"`
Expected: `.freezed.dart` and `.g.dart` files generated.

Run: `rtk powershell -Command "flutter test test/src/core/models/sale_discount_model_test.dart test/src/core/models/sale_addition_model_test.dart"`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add lib/src/core/models lib/src/core/models/export.dart test/src/core/models testing/mocks/models
git commit -m "feat: add sale discount/addition models"
```

### Task 3: Implement Missing Sale Endpoints (`clear`, `payment.clear`, `discount`, `addition`)

**Files:**
- Create: `lib/src/instance/sale/tef_ip_sale_discount.dart`
- Create: `lib/src/instance/sale/tef_ip_sale_addition.dart`
- Modify: `lib/src/instance/sale/tef_ip_sale.dart`
- Modify: `lib/src/instance/sale/tef_ip_sale_payment.dart`
- Modify: `lib/src/instance/tef_ip.dart`
- Modify: `test/src/instance/tef_ip_instance_test.dart`
- Create: `test/src/instance/sale/tef_ip_sale_discount_test.dart`
- Create: `test/src/instance/sale/tef_ip_sale_addition_test.dart`
- Modify: `test/src/instance/sale/tef_ip_sale_test.dart`
- Modify: `test/src/instance/sale/tef_ip_sale_payment_test.dart`

- [ ] **Step 1: Write failing tests for new methods and accessors**

```dart
test('should return TefIPSaleDiscount', () {
  expect(tefip.saleDiscount, isA<TefIPSaleDiscount>());
});

test('should return TefIPSaleAddition', () {
  expect(tefip.saleAddition, isA<TefIPSaleAddition>());
});
```

```dart
test('sale.clear should call DELETE /sale/clear', () async {
  // mock client.delete and verify endpoint
});

test('salePayment.clear should call DELETE /sale/payment/clear', () async {
  // mock client.delete and verify endpoint
});
```

- [ ] **Step 2: Run tests to verify failures**

Run: `rtk powershell -Command "flutter test test/src/instance/tef_ip_instance_test.dart test/src/instance/sale"`
Expected: FAIL for missing classes/methods.

- [ ] **Step 3: Implement endpoint clients**

```dart
interface class TefIPSaleDiscount implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.saleDiscount;

  Future<SaleCouponModel> post({required SaleDiscountModel discount, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> patch({required String discountId, required SaleDiscountModel discount, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> delete({required String discountId, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> clear({http.Client? client, Duration? timeout}) async { ... }
}
```

```dart
interface class TefIPSaleAddition implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.saleAddition;

  Future<SaleCouponModel> post({required SaleAdditionModel addition, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> patch({required String additionId, required SaleAdditionModel addition, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> delete({required String additionId, http.Client? client, Duration? timeout}) async { ... }
  Future<SaleCouponModel> clear({http.Client? client, Duration? timeout}) async { ... }
}
```

```dart
// in TefIPSale
Future<SaleCouponModel> clear({http.Client? client, Duration? timeout}) async { ... }

// in TefIPSalePayment
Future<SaleCouponModel> clear({http.Client? client, Duration? timeout}) async { ... }
```

- [ ] **Step 4: Re-run focused tests**

Run: `rtk powershell -Command "flutter test test/src/instance/tef_ip_instance_test.dart test/src/instance/sale/tef_ip_sale_test.dart test/src/instance/sale/tef_ip_sale_payment_test.dart test/src/instance/sale/tef_ip_sale_discount_test.dart test/src/instance/sale/tef_ip_sale_addition_test.dart"`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add lib/src/instance/sale lib/src/instance/tef_ip.dart test/src/instance/sale test/src/instance/tef_ip_instance_test.dart
git commit -m "feat: add missing sale clear/discount/addition endpoint clients"
```

### Task 4: Fix Log ZIP Binary Handling and Add Regression Tests

**Files:**
- Modify: `lib/src/core/networking/tef_ip_network_client.dart`
- Modify: `lib/src/instance/log/tef_ip_log.dart`
- Modify: `test/src/instance/log/tef_ip_log_test.dart`
- Modify: `test/src/core/networking/tef_ip_network_client_test.dart`

- [ ] **Step 1: Write failing regression tests for binary payload**

```dart
test('downloadZip preserves byte values above ASCII', () async {
  final binary = Uint8List.fromList([0, 255, 120, 3, 4]);
  // mock response bodyBytes with binary and assert exact equality
});
```

```dart
test('raw GET still throws TefIPRequestException on non-2xx', () async {
  // mock status 500 and expect typed exception
});
```

- [ ] **Step 2: Run tests to verify failure**

Run: `rtk powershell -Command "flutter test test/src/instance/log/tef_ip_log_test.dart test/src/core/networking/tef_ip_network_client_test.dart"`
Expected: FAIL due current string/codeUnits behavior and missing raw status validation.

- [ ] **Step 3: Implement byte-safe API**

```dart
// networking
if (returnRawResponse) {
  if (response.statusCode < 200 || response.statusCode >= 300) {
    throw TefIPRequestException(...);
  }
  return response.body as T;
}
```

```dart
// log endpoint
final response = await TefIPNetworkingClient.get<http.Response>(
  url: ...,
  returnRawResponse: true,
  ...
);
return Uint8List.fromList(response.bodyBytes);
```

Note: if `TefIPNetworkingClient` remains string-based for raw mode, add a dedicated bytes mode (`getBytes`) and use that from `downloadZip`.

- [ ] **Step 4: Run tests**

Run: `rtk powershell -Command "flutter test test/src/instance/log/tef_ip_log_test.dart test/src/core/networking/tef_ip_network_client_test.dart"`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add lib/src/core/networking/tef_ip_network_client.dart lib/src/instance/log/tef_ip_log.dart test/src/instance/log/tef_ip_log_test.dart test/src/core/networking/tef_ip_network_client_test.dart
git commit -m "fix: preserve binary bytes in logs zip download"
```

### Task 5: Documentation and Release Notes for New Surface

**Files:**
- Modify: `README.md`
- Modify: `example/bin/main.dart`
- Modify: `CHANGELOG.md`

- [ ] **Step 1: Write doc tests/checklist (failing-by-inspection)**

```text
- README must document new endpoints:
  - sale.clear
  - salePayment.clear
  - saleDiscount CRUD
  - saleAddition CRUD
  - logs behavior note for ZIP bytes
- Example must show at least one discount/addition flow.
- CHANGELOG must include an unreleased section for parity update.
```

- [ ] **Step 2: Update README usage sections with concrete snippets**

```dart
await tefIP.saleDiscount.post(
  discount: SaleDiscountModel(
    id: 'DESC-1',
    description: 'Desconto promocional',
    value: 10,
  ),
);

await tefIP.saleAddition.clear();
```

- [ ] **Step 3: Update example flow and changelog**

```markdown
## 1.2.1

### Added
- `DELETE /sale/clear` via `sale.clear()`
- `DELETE /sale/payment/clear` via `salePayment.clear()`
- `saleDiscount` and `saleAddition` endpoint clients with full CRUD

### Fixed
- Binary-safe ZIP parsing for `log.downloadZip()`
```

- [ ] **Step 4: Validate docs and run full test suite**

Run: `rtk powershell -Command "flutter test"`
Expected: PASS (all tests green).

- [ ] **Step 5: Commit**

```bash
git add README.md example/bin/main.dart CHANGELOG.md
git commit -m "docs: document new sale parity endpoints and zip fix"
```

### Task 6: Final Quality Gate and Release Preparation

**Files:**
- Modify: `pubspec.yaml` (version bump if publishing now)
- Modify: `CHANGELOG.md` (final release section if publishing now)

- [ ] **Step 1: Run static analysis**

Run: `rtk powershell -Command "flutter analyze"`
Expected: PASS with zero errors.

- [ ] **Step 2: Run deterministic build checks**

Run: `rtk powershell -Command "flutter pub run build_runner build --delete-conflicting-outputs"`
Expected: No diff after generation.

- [ ] **Step 3: Validate public API exports**

```dart
// ensure these are accessible via package export:
TefIP.instance.saleDiscount;
TefIP.instance.saleAddition;
SaleDiscountModel(...);
SaleAdditionModel(...);
```

- [ ] **Step 4: Run final regression pack**

Run: `rtk powershell -Command "flutter test test/src/core test/src/instance"`
Expected: PASS.

- [ ] **Step 5: Commit**

```bash
git add pubspec.yaml CHANGELOG.md
git commit -m "chore: prepare release for tefip parity updates"
```

## Self-Review Checklist

- Spec coverage: includes missing sale operations (`/sale/clear`, `/sale/payment/clear`, `/sale/discount/*`, `/sale/addition/*`), log ZIP behavior, and documentation updates.
- Placeholder scan: no TODO/TBD placeholders left.
- Type consistency: uses existing model naming conventions (`Sale*Model`) and endpoint class pattern (`TefIP*`).
