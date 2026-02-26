import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';
import '../../core/builders/urls/tef_ip_url_builder.dart';
import 'package:http/http.dart' as http;

/// Endpoint responsible for sending interactive questions
/// to the terminal.
///
/// Performs an HTTP `POST` request to `/ask`
/// and returns a [SuccessResponseModel].
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPAsk implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.ask;

  /// Sends a question to the terminal.
  Future<QuestionResponseModel> post({
    required QuestionRequestModel questionRequest,
    http.Client? client,
  }) async {
    try {
      return await TefIPNetworkingClient.post<QuestionResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(questionRequest.toJson()),
        client: client,
        onSuccess: (json) => QuestionResponseModel.fromJson(json),
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
