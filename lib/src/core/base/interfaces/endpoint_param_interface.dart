import 'package:meta/meta.dart';

@internal
abstract class EndpointParamInterface {
  String Function(String?) get endpoint;
}
