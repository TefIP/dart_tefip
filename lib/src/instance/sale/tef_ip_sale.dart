import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for starting a new sale on the terminal display.
///
/// Performs an HTTP `POST` request to `/sale`
/// and returns a [SaleCreatedResponseModel].
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSale implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.sale;

  /// Starts a new sale on the terminal display.
  ///
  /// - [request] model with the sale data.
  Future<SaleCreatedResponseModel> post({
    required SaleStartRequestModel request,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleCreatedResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(request.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleCreatedResponseModel.fromJson(json),
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
