import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

@immutable
@protected
interface class TefIPSaleDiscount implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.saleDiscount;

  Future<SaleCouponModel> post({
    required SaleDiscountModel discount,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleCouponModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(discount.toJson()),
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

  Future<SaleCouponModel> patch({
    required String discountId,
    required SaleDiscountModel discount,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleDiscountById(discountId)),
        body: jsonEncode(discount.toJson()),
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

  Future<SaleCouponModel> clear({
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(endpoint),
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
