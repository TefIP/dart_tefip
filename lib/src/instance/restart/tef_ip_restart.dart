import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// Endpoint responsible for restarting the terminal application.
///
/// Performs an HTTP `POST` request to `/restart`
/// and returns a [StatusModel].
///
/// Business rule:
/// - When executed on platforms other than Android or iOS,
///   the endpoint responds with HTTP 403 (Forbidden).
///   This is expected behavior according to the business rule.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPRestart implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.restart;

  /// Sends a restart command to the terminal application.
  Future<StatusModel> post() async {
    try {
      return await TefIPNetworkingClient.post<StatusModel>(
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