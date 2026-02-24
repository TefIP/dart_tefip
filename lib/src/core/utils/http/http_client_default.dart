/// Fallback factory used when neither `dart:io` nor `dart:html`
/// is available in the current compilation target.
///
/// This function is selected through conditional imports and
/// prevents client instantiation in unsupported platforms.
///
/// Throws:
/// - [UnsupportedError] when invoked in an environment that does not
///   provide an HTTP implementation.
createClient() => UnsupportedError(
  'Cannot create a client without dart:html or dart:io.',
);
