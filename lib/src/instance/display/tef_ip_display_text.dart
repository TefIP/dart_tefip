import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// Endpoint responsible for sending text content to the terminal display.
///
/// Performs an HTTP `POST` request to `/display/text`
/// with a JSON body and returns a [SuccessResponseModel].
///
/// Parameters:
/// - [displayTextRequest]: Model containing the text content
///   and display configuration.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPDisplayText implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.displayText;

  /// Sends formatted text data to be rendered on the terminal display.
  Future<SuccessResponseModel> post({
    required DisplayTextRequestModel displayTextRequest,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(displayTextRequest),
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