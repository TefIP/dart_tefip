import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for managing payments within a sale.
///
/// Provides methods to add and remove sale payments.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSalePayment implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.salePayment;

  /// Adds a payment to the current sale.
  ///
  /// - [payment] model of the payment to be added.
  Future<SaleMutationResponseModel> post({
    required SalePaymentModel payment,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleMutationResponseModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(payment.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleMutationResponseModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Updates an existing payment in the current sale.
  ///
  /// - [paymentId] ID of the payment to be updated.
  /// - [payment] model with updated data.
  Future<SaleMutationResponseModel> patch({
    required String paymentId,
    required SalePaymentModel payment,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SaleMutationResponseModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.salePaymentById(paymentId)),
        body: jsonEncode(payment.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleMutationResponseModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Removes a payment from the current sale.
  ///
  /// - [paymentId] ID of the payment to be removed.
  Future<SaleMutationResponseModel> delete({
    required String paymentId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleMutationResponseModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.salePaymentById(paymentId)),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleMutationResponseModel.fromJson(json),
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
