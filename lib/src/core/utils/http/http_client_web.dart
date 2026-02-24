import 'package:fetch_client/fetch_client.dart' as fetch;

/// HTTP client factory for `dart:html` (web) environments.
///
/// Creates a [fetch.FetchClient] configured with CORS mode,
/// enabling cross-origin requests in browser contexts.
///
/// Intended to be selected via conditional imports.
fetch.FetchClient createClient() => fetch.FetchClient(
  mode: fetch.RequestMode.cors,
);
