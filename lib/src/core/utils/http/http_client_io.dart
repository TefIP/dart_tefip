import 'package:http/http.dart' as http;

/// Default HTTP client factory for `dart:io` environments.
///
/// Creates a standard [http.Client] instance used for
/// performing network requests in mobile and desktop platforms.
///
/// Intended to be selected via conditional imports.
http.Client createClient() => http.Client();
