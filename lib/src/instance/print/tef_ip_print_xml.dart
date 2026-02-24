import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../core/networking/tef_ip_network_client.dart';

/// Endpoint responsible for printing XML content on the terminal printer.
///
/// Performs an HTTP `POST` request to `/print/xml`
/// with raw XML content and returns a [SuccessResponseModel].
///
/// The request uses `Content-Type: application/text`.
///
/// Parameters:
/// - [xml]: XML string to be processed and printed.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPPrintXml implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.printXml;

  /// Sends XML content to be printed by the terminal.
  Future<SuccessResponseModel> post({
    required String xml,
    http.Client? client,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: xml,
        headers: {'Content-Type': 'application/text'},
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
