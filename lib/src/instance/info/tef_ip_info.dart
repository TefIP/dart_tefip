import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

@immutable
@protected
/// Endpoint responsible for retrieving terminal information.
///
/// Performs an HTTP `GET` request to `/info`
/// and returns an [InfoModel] containing
/// device, platform, version, and configuration data.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPInfo implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.info;

  /// Retrieves terminal information.
  Future<InfoModel> get({http.Client? client}) async {
    try {
      return await TefIPNetworkingClient.get<InfoModel>(
        url: TefIpUrlBuilder.build(endpoint),
        client: client,
        onSuccess: (json) => InfoModel.fromJson(json),
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
