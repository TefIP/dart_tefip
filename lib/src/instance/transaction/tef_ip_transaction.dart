import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

@immutable
@protected
interface class TefIPTransaction implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.transaction;

  Future<List<TransactionModel>> getAll() async {
    try {
      return await TefIPNetworkingClient.getList<TransactionModel>(
        url: TefIpUrlBuilder.build(endpoint),
        onSuccess: (list) =>
            list.map((json) => TransactionModel.fromJson(json)).toList(),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  Future<TransactionModel> get({String? referenceId}) async {
    try {
      return await TefIPNetworkingClient.get<TransactionModel>(
        url: TefIpUrlBuilder.build(endpoint, param: referenceId),
        onSuccess: (json) => TransactionModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  Future<TransactionResponseModel> post({
    required TransactionRequestModel transactionRequest,
  }) async {
    try {
      return await TefIPNetworkingClient.post<TransactionResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(transactionRequest.toJson()),
        onSuccess: (json) => TransactionResponseModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }
}
