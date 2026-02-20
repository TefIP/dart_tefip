import 'dart:typed_data';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

@immutable
@protected
/// Endpoint responsible for printing an image on the terminal printer.
///
/// Performs an HTTP `POST` request to `/print/image`
/// with raw binary data (`application/octet-stream`)
/// and returns a [SuccessResponseModel].
///
/// Parameters:
/// - [imageData]: Raw bytes of the image to be printed.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPPrintImage implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.printImage;

  /// Sends a binary image to be printed by the terminal.
  Future<SuccessResponseModel> post({required Uint8List imageData}) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: imageData,
        headers: {'Content-Type': 'application/octet-stream'},
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