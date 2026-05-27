import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for managing sale surcharge additions.
///
/// Performs HTTP `POST`, `PATCH`, and `DELETE` requests to `/sale/addition`.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSaleAddition implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.saleAddition;

  /// Adds a surcharge addition. Returns the created addition.
  ///
  /// - [addition]: model with the addition data.
  Future<SaleAdditionModel> post({
    required SaleAdditionModel addition,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleAdditionModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(addition.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleAdditionModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Updates an existing addition. Returns the updated addition.
  ///
  /// - [additionId]: ID of the addition to update.
  /// - [addition]: model with the updated addition data.
  Future<SaleAdditionModel> patch({
    required String additionId,
    required SaleAdditionModel addition,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SaleAdditionModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleAdditionById(additionId)),
        body: jsonEncode(addition.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleAdditionModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Removes an addition. Returns the updated sale coupon.
  Future<SaleCouponModel> delete({
    required String additionId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleAdditionById(additionId)),
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

  /// Removes all additions from the active sale.
  Future<SaleCouponModel> clear({
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleAdditionClear),
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
