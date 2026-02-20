import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../../core/networking/tef_ip_network_client.dart';

@immutable
@protected
interface class TefIPPrintXml implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.printXml;

  Future<SuccessResponseModel> post({required String xml}) async {
    try {
      return await TefIPNetworkingClient.post<SuccessResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: xml,
        headers: {'Content-Type': 'application/text'},
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
