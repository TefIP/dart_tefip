import 'package:dart_tefip/src/core/constants/tef_ip_strings.dart';
import 'package:meta/meta.dart';

@immutable
@internal
abstract class TefIPConfigs {
  static final defaultRequestsTimeOut = Duration(minutes: 1, seconds: 30);

  static Duration requestsTimeOut = defaultRequestsTimeOut;
  
  static String? _baseUrl;

  @internal
  static set baseUrl(String? baseUrl) {
    _baseUrl = baseUrl;
  }
  
  @internal
  static String get baseUrl {
    return _baseUrl ?? TefIPStrings.defaultBaseUrl;
  }

}
