import 'package:dart_tefip/src/core/base/interfaces/endpoint_param_interface.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:meta/meta.dart';

@immutable
@protected
interface class TefIPReversal implements EndpointParamInterface {
  @override
  String Function(String?) get endpoint => TefIPEndpoints.reversal;
}
