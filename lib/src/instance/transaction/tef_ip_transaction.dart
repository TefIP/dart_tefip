import 'dart:convert';
import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for managing terminal transactions.
///
/// Provides methods to retrieve, query, and create transactions
/// via HTTP requests to `/transaction`.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPTransaction implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.transaction;

  /// Retrieves all transactions as a list of [TransactionModel].
  Future<List<TransactionModel>> getAll({http.Client? client}) async {
    try {
      return await TefIPNetworkingClient.getList<TransactionModel>(
        url: TefIpUrlBuilder.build(endpoint),
        client: client,
        onSuccess: (list) =>
            list.map((json) => TransactionModel.fromJson(json)).toList(),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Retrieves a specific transaction by [referenceId].
  Future<TransactionModel> get({
    String? referenceId,
    http.Client? client,
  }) async {
    try {
      return await TefIPNetworkingClient.get<TransactionModel>(
        url: TefIpUrlBuilder.build(endpoint, param: referenceId),
        client: client,
        onSuccess: (json) => TransactionModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Creates a new transaction on the terminal.
  ///
  /// Parameters:
  /// - [transactionRequest]: Transaction data to be processed.
  Future<TransactionResponseModel> post({
    required TransactionRequestModel transactionRequest,
    http.Client? client,
  }) async {
    try {
      return await TefIPNetworkingClient.post<TransactionResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(transactionRequest.toJson()),
        client: client,
        onSuccess: (json) => TransactionResponseModel.fromJson(json),
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
