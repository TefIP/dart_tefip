import 'package:dart_tefip/src/instance/configs/tefip_configs.dart';
import 'package:meta/meta.dart';

@immutable
@internal
abstract class TefIpUrlBuilder {
  @internal
  static String build(String endpoint, {String? param}) {
    final baseUrl = TefIPConfigs.baseUrl;

    if (param == null) return '$baseUrl$endpoint';
    return '$baseUrl$endpoint/$param';
  }
}
