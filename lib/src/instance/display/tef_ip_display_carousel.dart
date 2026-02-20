import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

/// Endpoint responsible for displaying a carousel
/// of images on the terminal.
///
/// Performs an HTTP `POST` request to `/display/carousel`
/// and returns a [SuccessResponseModel].
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPDisplayCarousel implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.displayCarousel;

  /// Sends a carousel display request to the terminal.
  Future<SuccessResponseModel> post({
    required DisplayCarouselRequestModel displayCarouselRequest,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(displayCarouselRequest.toJson()),
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