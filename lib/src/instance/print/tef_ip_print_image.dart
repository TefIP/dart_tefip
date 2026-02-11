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
interface class TefIpPrintImage implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.printImage;

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
    } on TefIPRequestException catch (_) {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }
}
