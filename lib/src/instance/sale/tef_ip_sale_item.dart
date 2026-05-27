import 'dart:convert';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Endpoint responsible for managing items within a sale.
///
/// Provides methods to add, update, remove, and cancel sale items.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPSaleItem implements EndpointInterface {
  @override
  String get endpoint => TefIPEndpoints.saleItem;

  /// Adds a new item to the current sale. Returns the updated item.
  ///
  /// - [item] model of the item to be added.
  Future<SaleItemModel> post({
    required SaleItemModel item,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleItemModel>(
        url: TefIpUrlBuilder.build(endpoint),
        body: jsonEncode(item.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleItemModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Updates an existing item. Returns the updated item.
  ///
  /// - [itemId] ID of the item to be updated.
  /// - [item] model with updated data.
  Future<SaleItemModel> patch({
    required String itemId,
    required SaleItemModel item,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.patch<SaleItemModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleItemById(itemId)),
        body: jsonEncode(item.toJson()),
        client: client,
        timeout: timeout,
        onSuccess: (json) => SaleItemModel.fromJson(json),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Removes an item from the current sale. Returns the updated sale coupon.
  ///
  /// - [itemId] ID of the item to be removed.
  Future<SaleCouponModel> delete({
    required String itemId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleItemById(itemId)),
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

  /// Removes all items from the current sale. Returns the updated sale coupon.
  Future<SaleCouponModel> clear({
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.delete<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleItemClear),
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

  /// Cancels an item in the current sale. Returns the updated sale coupon.
  ///
  /// - [itemId] ID of the item to be canceled.
  Future<SaleCouponModel> cancel({
    required String itemId,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.post<SaleCouponModel>(
        url: TefIpUrlBuilder.build(TefIPEndpoints.saleItemCancel(itemId)),
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
