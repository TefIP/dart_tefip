import 'package:dart_tefip/src/core/base/tefip_client_base.dart';
import 'package:dart_tefip/src/instance/ask/tef_ip_ask.dart';
import 'package:dart_tefip/src/core/builders/headers/tef_ip_headers_builder.dart';
import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_carousel.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_clear.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_image.dart';
import 'package:dart_tefip/src/instance/display/tef_ip_display_text.dart';
import 'package:dart_tefip/src/instance/info/tef_ip_info.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_image.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_text.dart';
import 'package:dart_tefip/src/instance/print/tef_ip_print_xml.dart';
import 'package:dart_tefip/src/instance/restart/tef_ip_restart.dart';
import 'package:dart_tefip/src/instance/reversal/tef_ip_reversal.dart';
import 'package:dart_tefip/src/instance/status/tef_ip_status.dart';
import 'package:dart_tefip/src/instance/transaction/tef_ip_transaction.dart';
import 'package:meta/meta.dart';

@immutable
/// The main class of the package. It is a singleton class,
/// responsible for configuring and providing access to all TefIP API endpoints.
///
/// You can access the instance by calling the [TefIP.instance] getter.
///
/// ```dart
/// final tefip = TefIP.instance;
/// ```
@immutable
final class TefIP extends TefIPClientBase {
  /// Private constructor to prevent external instantiation.
  TefIP._();

  /// The singleton instance of [TefIP].
  static final TefIP _instance = TefIP._();

  /// Returns the singleton instance of [TefIP].
  ///
  /// Example:
  /// ```dart
  /// final tefip = TefIP.instance;
  /// ```
  static TefIP get instance => _instance;

  /// Sets the base URL used for all API requests.
  ///
  /// This should point to the TefIP server address.
  ///
  /// Example:
  /// ```dart
  /// TefIP.baseUrl = "http://192.168.0.10:8080";
  /// ```
  static set baseUrl(String baseUrl) {
    TefIPConfigs.baseUrl = baseUrl;
  }

  static String? get baseUrl => TefIPConfigs.baseUrl;

  /// Returns the configured username used for authentication.
  static String? get username => TefIPHeadersBuilder.username;

  /// Sets the username used for authentication in all API requests.
  ///
  /// Example:
  /// ```dart
  /// TefIP.username = "admin";
  /// ```
  static set username(String username) {
    TefIPHeadersBuilder.username = username;
  }

  /// Returns the configured password used for authentication.
  static String? get password => TefIPHeadersBuilder.password;

  /// Sets the password used for authentication in all API requests.
  ///
  /// Example:
  /// ```dart
  /// TefIP.password = "1234";
  /// ```
  static set password(String password) {
    TefIPHeadersBuilder.password = password;
  }

  /// Provides access to the Ask endpoint.
  ///
  /// Used to request input or confirmation from the terminal.
  TefIPAsk get ask => TefIPAsk();

  /// Provides access to the Display Carousel endpoint.
  ///
  /// Used to display multiple images in sequence on the terminal screen.
  TefIPDisplayCarousel get displayCarousel => TefIPDisplayCarousel();

  /// Provides access to the Display Clear endpoint.
  ///
  /// Used to clear the terminal display.
  TefIPDisplayClear get displayClear => TefIPDisplayClear();

  /// Provides access to the Display Image endpoint.
  ///
  /// Used to render a single image on the terminal screen.
  TefIPDisplayImage get displayImage => TefIPDisplayImage();

  /// Provides access to the Display Text endpoint.
  ///
  /// Used to render text on the terminal display.
  TefIPDisplayText get displayText => TefIPDisplayText();

  /// Provides access to the Info endpoint.
  ///
  /// Used to retrieve device and environment information.
  TefIPInfo get info => TefIPInfo();

  /// Provides access to the Print Image endpoint.
  ///
  /// Used to print an image on the terminal printer.
  TefIPPrintImage get printImage => TefIPPrintImage();

  /// Provides access to the Print Text endpoint.
  ///
  /// Used to print plain text on the terminal printer.
  TefIPPrintText get printText => TefIPPrintText();

  /// Provides access to the Print XML endpoint.
  ///
  /// Used to print structured content in XML format.
  TefIPPrintXml get printXml => TefIPPrintXml();

  /// Provides access to the Restart endpoint.
  ///
  /// Used to restart the terminal application or device.
  TefIPRestart get restart => TefIPRestart();

  /// Provides access to the Reversal endpoint.
  ///
  /// Used to perform transaction reversal operations.
  TefIPReversal get reversal => TefIPReversal();

  /// Provides access to the Status endpoint.
  ///
  /// Used to check the current terminal or transaction status.
  TefIPStatus get status => TefIPStatus();

  /// Provides access to the Transaction endpoint.
  ///
  /// Used to initiate and manage payment transactions.
  TefIPTransaction get transaction => TefIPTransaction();
}
