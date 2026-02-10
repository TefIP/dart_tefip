import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:meta/meta.dart';

@immutable
@protected
interface class TefIPInfo implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.info;

  
}
