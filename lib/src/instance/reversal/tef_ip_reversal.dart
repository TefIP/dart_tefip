import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_param_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

@immutable
@protected
interface class TefIPReversal implements EndpointParamInterface {
  @override
  String Function(String?) get endpoint => TefIPEndpoints.reversal;

  Future<TransactionResponseModel> post({
    required String referenceId,
  }) async {
    try {
      return await TefIPNetworkingClient.post<TransactionResponseModel>(
        url: TefIpUrlBuilder.build(endpoint(referenceId)),
        onSuccess: (json) => TransactionResponseModel.fromJson(json),
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
