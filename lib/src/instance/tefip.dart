import 'package:dart_tefip/src/core/base/tefip_client_base.dart';
import 'package:dart_tefip/src/instance/headers/tef_ip_headers_builder.dart';
import 'package:meta/meta.dart';

@immutable
final class TefIP extends TefIPClientBase {
  TefIP._();

  static final TefIP _instance = TefIP._();

  static TefIP get instance => _instance;

  static set baseUrl(String baseUrl) {
    TefIP.baseUrl = baseUrl;
  }

  static String? get username => TefIPHeadersBuilder.username;

  static set username(String username) {
    TefIPHeadersBuilder.username = username;
  }

  static String? get password => TefIPHeadersBuilder.password;

  static set password(String password) {
    TefIPHeadersBuilder.password = password;
  }
}
