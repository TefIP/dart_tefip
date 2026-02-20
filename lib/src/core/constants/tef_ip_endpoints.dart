import 'package:meta/meta.dart';

/// Centralized definition of all TefIP API endpoint paths.
///
/// This class provides a single source of truth for route
/// definitions used across the SDK. It ensures consistency
/// and reduces duplication when building requests.
///
/// Endpoints are defined as:
/// - Static constant strings for fixed routes.
/// - Static methods for parameterized routes.
///
/// This class does not perform URL construction.
/// Full URLs must be composed using the appropriate URL builder.
///
/// Intended for internal SDK use only.
@immutable
abstract final class TefIPEndpoints {
  /// Endpoint used to request input or confirmation from the terminal.
  static final String ask = '/ask';

  /// Endpoint used to display an image on the terminal.
  static final String displayImage = '/display/image';

  /// Endpoint used to display text on the terminal.
  static final String displayText = '/display/text';

  /// Endpoint used to display multiple images in sequence.
  static final String displayCarousel = '/display/carousel';

  /// Endpoint used to clear the terminal display.
  static final String displayClear = '/display/clear';

  /// Endpoint used to retrieve device and environment information.
  static final String info = '/info';

  /// Endpoint used to print an image.
  static final String printImage = '/print/image';

  /// Endpoint used to print plain text.
  static final String printText = '/print/text';

  /// Endpoint used to print XML content.
  static final String printXml = '/print/xml';

  /// Endpoint used to restart the terminal application or device.
  static final String restart = '/restart';

  /// Builds the endpoint used to reverse a specific transaction.
  ///
  /// The [referenceId] identifies the transaction to be reversed.
  ///
  /// Example:
  /// ```dart
  /// final endpoint = TefIPEndpoints.reversal("123456");
  /// ```
  static String reversal(String? referenceId) =>
      '/transaction/$referenceId/reversal';

  /// Endpoint used to initiate or manage transactions.
  static final String transaction = '/transaction';

  /// Endpoint used to retrieve the current terminal status.
  static final String status = '/status';
}