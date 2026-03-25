import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for closing the current display overlay on the terminal.
///
/// Performs an HTTP `POST` request to `/display/pop`
/// and returns a [SuccessResponseModel].
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPDisplayPop implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.displayPop;

  /// Sends a pop command to close the current display overlay on the terminal.
  Future<SuccessResponseModel> post({http.Client? client}) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        client: client,
        onSuccess: (json) => SuccessResponseModel.fromJson(json),
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
