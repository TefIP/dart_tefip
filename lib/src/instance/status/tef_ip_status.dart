import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// Endpoint responsible for retrieving the terminal's current status.
///
/// Performs an HTTP `GET` request to `/status`
/// and returns a [StatusModel] with information about
/// device readiness, network, and operational state.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPStatus implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.status;

  /// Retrieves the current terminal status.
  Future<StatusModel> get() async {
    try {
      return await TefIPNetworkingClient.get<StatusModel>(
        url: TefIpUrlBuilder.build(endpoint),
        onSuccess: (json) => StatusModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }
}