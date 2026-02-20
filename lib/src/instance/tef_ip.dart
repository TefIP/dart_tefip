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
final class TefIP extends TefIPClientBase {
  TefIP._();

  static final TefIP _instance = TefIP._();

  static TefIP get instance => _instance;

  static set baseUrl(String baseUrl) {
    TefIPConfigs.baseUrl = baseUrl;
  }

  static String? get username => TefIPHeadersBuilder.username;

  static set username(String username) {
    TefIPHeadersBuilder.username = username;
  }

  static String? get password => TefIPHeadersBuilder.password;

  static set password(String password) {
    TefIPHeadersBuilder.password = password;
  }

  TefIPAsk get ask => TefIPAsk();

  TefIPDisplayCarousel get displayCarousel => TefIPDisplayCarousel();

  TefIPDisplayClear get displayClear => TefIPDisplayClear();

  TefIPDisplayImage get displayImage => TefIPDisplayImage();

  TefIPDisplayText get displayText => TefIPDisplayText();

  TefIPInfo get info => TefIPInfo();

  TefIPPrintImage get printImage => TefIPPrintImage();

  TefIPPrintText get printText => TefIPPrintText();

  TefIPPrintXml get printXml => TefIPPrintXml();

  TefIPRestart get restart => TefIPRestart();

  TefIPReversal get reversal => TefIPReversal();

  TefIPStatus get status => TefIPStatus();

  TefIPTransaction get transaction => TefIPTransaction();
}
