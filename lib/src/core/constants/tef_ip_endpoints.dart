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

  /// Endpoint used to cancel an ongoing user input request.
  static final String askCancel = '/ask/cancel';

  /// Endpoint used to request multiple inputs from the terminal as a form.
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

  /// Endpoint used to remove all items from the current sale at once.
  static final String saleItemClear = '/sale/item/clear';

  /// Builds the endpoint to cancel a specific sale item by [itemId].
  static String saleItemCancel(String itemId) => '/sale/item/$itemId/cancel';

  /// Endpoint used to add a payment to a sale.
  static final String salePayment = '/sale/payment';

  /// Builds the endpoint for a specific sale payment by [paymentId].
  static String salePaymentById(String paymentId) => '/sale/payment/$paymentId';

  /// Endpoint used to finalize a sale.
  static final String saleFinalize = '/sale/finalize';

  /// Endpoint used to clear a sale.
  static final String saleClear = '/sale/clear';

  /// Endpoint used to clear sale payments.
  static final String salePaymentClear = '/sale/payment/clear';

  /// Endpoint used to handle sale discounts.
  static final String saleDiscount = '/sale/discount';

  /// Endpoint used to clear sale discounts.
  static final String saleDiscountClear = '/sale/discount/clear';

  /// Endpoint used to handle sale additions.
  static final String saleAddition = '/sale/addition';

  /// Endpoint used to clear sale additions.
  static final String saleAdditionClear = '/sale/addition/clear';

  /// Builds the endpoint for a specific sale discount by [discountId].
  static String saleDiscountById(String discountId) =>
      '/sale/discount/$discountId';

  /// Builds the endpoint for a specific sale addition by [additionId].
  static String saleAdditionById(String additionId) =>
      '/sale/addition/$additionId';

  /// Endpoint used to cancel a sale.
  static final String saleCancel = '/sale/cancel';

  /// Endpoint used to retrieve application logs.
  static final String logs = '/logs';

  /// Endpoint used to download logs as a ZIP archive.
  static final String logsZip = '/logs/zip/download';

  /// Endpoint used to stream logs in real time via SSE.
  static final String logsStream = '/logs/stream';
}
