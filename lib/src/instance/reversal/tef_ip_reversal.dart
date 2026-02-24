import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_param_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for performing a transaction reversal on the terminal.
///
/// Performs an HTTP `POST` request to `/transaction/{referenceId}/reversal`
/// and returns a [TransactionResponseModel].
///
/// Parameters:
/// - [referenceId]: The unique ID of the transaction to be reversed.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPReversal implements EndpointParamInterface {
  /// Returns the endpoint path function with the transaction reference.
  @override
  String Function(String?) get endpoint => TefIPEndpoints.reversal;

  /// Sends a reversal request for a specific transaction.
  Future<TransactionResponseModel> post({
    required String referenceId,
    http.Client? client,
  }) async {
    try {
      return await TefIPNetworkingClient.post<TransactionResponseModel>(
        url: TefIpUrlBuilder.build(endpoint(referenceId)),
        client: client,
        onSuccess: (json) => TransactionResponseModel.fromJson(json),
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
