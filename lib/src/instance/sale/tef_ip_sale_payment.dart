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
/// Provides methods to add, update, and remove sale payments.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSalePayment implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.salePayment;

  /// Adds a payment to the current sale. Returns the updated payment.
  ///
  /// - [payment] model of the payment to be added.
  Future<SalePaymentModel> post({
    required SalePaymentModel payment,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SalePaymentModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(payment.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SalePaymentModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Updates an existing payment. Returns the updated payment.
  ///
  /// - [paymentId] ID of the payment to be updated.
  /// - [payment] model with updated data.
  Future<SalePaymentModel> patch({
    required String paymentId,
    required SalePaymentModel payment,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SalePaymentModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.salePaymentById(paymentId)),
        body: jsonEncode(payment.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SalePaymentModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Removes a payment from the current sale. Returns the updated sale coupon.
  ///
  /// - [paymentId] ID of the payment to be removed.
  Future<SaleCouponModel> delete({
    required String paymentId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.salePaymentById(paymentId)),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleCouponModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Clears all payments from the active sale.
  Future<SaleCouponModel> clear({
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.salePaymentClear),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleCouponModel.fromJson(json),
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
