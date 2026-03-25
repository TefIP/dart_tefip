import 'package:meta/meta.dart';

/// Centralized definition of all TEF IP API endpoint paths.
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

  static final String askCancel = '/ask/cancel';

  static final String askForm = '/ask/form';


  /// Endpoint used to display an image on the terminal.
  static final String displayImage = '/display/image';

  /// Endpoint used to display text on the terminal.
  static final String displayText = '/display/text';

  /// Endpoint used to display multiple images in sequence.
  static final String displayCarousel = '/display/carousel';

  /// Endpoint used to clear the terminal display.
  static final String displayClear = '/display/clear';

  /// Endpoint used to close the current display overlay.
  static final String displayPop = '/display/pop';

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

  /// Endpoint used to start a sale.
  static final String sale = '/sale';

  /// Endpoint used to add or list sale items.
  static final String saleItem = '/sale/item';

  /// Builds the endpoint for a specific sale item by [itemId].
  static String saleItemById(String itemId) => '/sale/item/$itemId';

  /// Builds the endpoint to cancel a specific sale item by [itemId].
  static String saleItemCancel(String itemId) => '/sale/item/$itemId/cancel';

  /// Endpoint used to add a payment to a sale.
  static final String salePayment = '/sale/payment';

  /// Builds the endpoint for a specific sale payment by [paymentId].
  static String salePaymentById(String paymentId) =>
      '/sale/payment/$paymentId';

  /// Endpoint used to finalize a sale.
  static final String saleFinalize = '/sale/finalize';

  /// Endpoint used to cancel a sale.
  static final String saleCancel = '/sale/cancel';
}