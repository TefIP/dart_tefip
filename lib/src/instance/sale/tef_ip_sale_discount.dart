import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for managing sale discount coupons.
///
/// Performs HTTP `POST`, `PATCH`, and `DELETE` requests to `/sale/discount`.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSaleDiscount implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.saleDiscount;

  /// Adds a discount coupon. Returns the created discount.
  ///
  /// - [discount]: model with the discount data.
  Future<SaleDiscountModel> post({
    required SaleDiscountModel discount,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleDiscountModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(discount.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleDiscountModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Updates an existing discount. Returns the updated discount.
  ///
  /// - [discountId]: ID of the discount to update.
  /// - [discount]: model with the updated discount data.
  Future<SaleDiscountModel> patch({
    required String discountId,
    required SaleDiscountModel discount,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SaleDiscountModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleDiscountById(discountId)),
        body: jsonEncode(discount.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleDiscountModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Removes a discount. Returns the updated sale coupon.
  Future<SaleCouponModel> delete({
    required String discountId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleDiscountById(discountId)),
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

  /// Removes all discounts from the active sale.
  Future<SaleCouponModel> clear({
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleDiscountClear),
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
