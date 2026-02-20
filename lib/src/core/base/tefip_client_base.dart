/// Base abstract class for the TefIP SDK.
///
/// This class defines the foundation for all client implementations
/// responsible for communicating with the TefIP API.
///
/// It is intended to be extended by the main SDK entry point
/// (e.g., [TefIP]) and may be used to:
///
/// - Share common networking behavior.
/// - Define internal client contracts.
/// - Provide a consistent type for dependency abstraction.
/// - Allow future extensions without breaking the public API.
///
/// This class does not expose any public API directly.
/// All endpoint access is provided through the concrete implementation.
///
/// Example:
/// ```dart
/// final TefIPClientBase client = TefIP.instance;
/// ```
abstract class TefIPClientBase {}