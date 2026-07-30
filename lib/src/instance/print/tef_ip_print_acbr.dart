import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../../core/networking/tef_ip_network_client.dart';

/// Endpoint responsible for printing ACBr content on the terminal printer.
///
/// Performs an HTTP `POST` request to `/print/acbr` with raw ACBr content
/// and returns a [SuccessResponseModel].
///
/// The request uses `Content-Type: text/plain`.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPPrintAcbr implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.printAcbr;

  /// Sends raw ACBr content to be printed.
  Future<SuccessResponseModel> post({
    required String content,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await _postContent(content, client, timeout);
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  Future<SuccessResponseModel> _postContent(
    String content,
    http.Client? client,
    Duration? timeout,
  ) {
    return TefIPNetworkingClient.post<SuccessResponseModel>(
      url: TefIpUrlBuilder.build(endpoint),
      body: content,
      headers: {'Content-Type': 'text/plain'},
      client: client,
      timeout: timeout,
      onSuccess: (json) => SuccessResponseModel.fromJson(json),
    );
  }
}
