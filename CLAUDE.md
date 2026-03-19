# dart_tefip

Dart/Flutter SDK for communicating with TEF IP payment terminals over HTTP.

## Project Overview

- **Package**: `dart_tefip` (pub.dev)
- **Version**: 1.0.8
- **Type**: Dart/Flutter library package
- **Purpose**: Structured SDK for TEF IP terminal operations (transactions, printing, display, input)

## Architecture

### Entry Point
`TefIP` is a singleton (`TefIP.instance`) that extends `TefIPClientBase`. All endpoints are accessed through getters on this instance:
```dart
final tefip = TefIP.instance;
TefIP.baseUrl = "http://localhost:8080";
TefIP.username = "admin";
TefIP.password = "1234";
```

### Key Layers
- **`lib/src/instance/`** — Endpoint classes (one per endpoint group): `TefIPTransaction`, `TefIPAsk`, `TefIPPrintImage`, etc.
- **`lib/src/core/networking/`** — `TefIPNetworkingClient` (static GET/POST methods)
- **`lib/src/core/models/`** — Freezed + json_serializable models (one folder per model)
- **`lib/src/core/builders/`** — URL builder (`TefIPUrlBuilder`) and headers builder (`TefIPHeadersBuilder`)
- **`lib/src/core/enums/`** — Transaction types, question types, carousel transitions
- **`lib/src/core/exceptions/`** — `TefIPRequestException`, `TefIPUnexpectedException`
- **`lib/src/core/converters/`** — Custom JSON converters (datetime, images, details, transaction type)
- **`lib/src/core/utils/http/`** — Platform-aware HTTP client (IO vs Web via conditional imports)

### Platform HTTP Client
Uses conditional imports to select the right HTTP client:
```dart
import '../utils/http/http_client_default.dart'
    if (dart.library.js) '../utils/http/http_client_web.dart'
    if (dart.library.io) '../utils/http/http_client_io.dart';
```

## Common Commands

### Run tests
```bash
flutter test
```

### Run code generation (freezed + json_serializable)
```bash
dart run build_runner build --delete-conflicting-outputs
```

### Watch mode for code generation
```bash
dart run build_runner watch --delete-conflicting-outputs
```

### Analyze code
```bash
flutter analyze
```

## Adding a New Endpoint

1. Create `lib/src/instance/<name>/tef_ip_<name>.dart` — endpoint class
2. Add request/response models under `lib/src/core/models/<name>/` using freezed + json_annotation
3. Run `build_runner` to regenerate `.freezed.dart` and `.g.dart` files
4. Add a getter on `TefIP` in `lib/src/instance/tef_ip.dart`
5. Export models via `lib/src/core/models/export.dart`
6. Add tests under `test/src/instance/<name>/`

## Models Pattern

Each model lives in its own folder with up to 3 files:
- `<name>_model.dart` — source with `@freezed` / `@JsonSerializable`
- `<name>_model.freezed.dart` — generated
- `<name>_model.g.dart` — generated

Never edit `.freezed.dart` or `.g.dart` files manually.

## Exception Handling

- `TefIPRequestException` — HTTP 4xx/5xx responses (has `statusCode`, `message`, `rawBody`)
- `TefIPUnexpectedException` — unhandled/unexpected errors

## Conventions

- **Commits**: Conventional Commits (`feat:`, `fix:`, `refactor:`, etc.) with emoji prefix (e.g., `:bug: fix:`, `:rocket: feat:`)
- **Versioning**: Semantic Versioning
- **Naming**: `tef_ip_` prefix on all SDK classes and files
- **Transaction types** (tPag): `03` = credit, `04` = debit, `17` = PIX (numerical codes, not alphabetic)
