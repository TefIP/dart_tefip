import 'dart:typed_data';

import 'package:dart_tefip/dart_tefip.dart';
import 'package:dart_tefip/src/core/base/interfaces/endpoint_interface.dart';
import 'package:dart_tefip/src/core/builders/urls/tef_ip_url_builder.dart';
import 'package:dart_tefip/src/core/constants/tef_ip_endpoints.dart';
import 'package:dart_tefip/src/core/networking/tef_ip_network_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show ClientException;
import 'package:meta/meta.dart';

/// Endpoint responsible for retrieving and streaming terminal logs.
///
/// Provides methods to fetch, download, and stream log entries
/// via HTTP requests to `/logs`.
///
/// Errors:
/// - [TefIPRequestException] for request failures.
/// - [TefIPUnexpectedException] for unexpected errors.
@immutable
@protected
interface class TefIPLog implements EndpointInterface {
  /// Fixed endpoint path.
  @override
  String get endpoint => TefIPEndpoints.logs;

  Map<String, String> _buildQueryParams({
    TefIPLogLevel? level,
    TefIPLogSource? source,
    DateTime? dateFrom,
    DateTime? dateTo,
    int? limit,
    String? search,
    bool? includeDetails,
  }) {
    return {
      if (level != null) 'level': level.name,
      if (source != null) 'source': source.name,
      if (dateFrom != null) 'dateFrom': dateFrom.toIso8601String(),
      if (dateTo != null) 'dateTo': dateTo.toIso8601String(),
      if (limit != null) 'limit': limit.toString(),
      'search': ?search,
      if (includeDetails != null) 'includeDetails': includeDetails.toString(),
    };
  }

  /// Fetches all logs matching the given filters.
  ///
  /// Parameters:
  /// - [level]: Optional log level filter.
  /// - [source]: Optional log source filter.
  /// - [dateFrom]: Optional start date filter.
  /// - [dateTo]: Optional end date filter.
  /// - [limit]: Optional maximum number of results.
  /// - [search]: Optional search term.
  /// - [includeDetails]: Optional flag to include log details.
  /// - [client]: Optional HTTP client for testing.
  /// - [timeout]: Per-request timeout override.
  Future<List<LogModel>> getAll({
    TefIPLogLevel? level,
    TefIPLogSource? source,
    DateTime? dateFrom,
    DateTime? dateTo,
    int? limit,
    String? search,
    bool? includeDetails,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.get<List<LogModel>>(
        url: TefIpUrlBuilder.build(
          endpoint,
          queryParams: _buildQueryParams(
            level: level,
            source: source,
            dateFrom: dateFrom,
            dateTo: dateTo,
            limit: limit,
            search: search,
            includeDetails: includeDetails,
          ),
        ),
        client: client,
        timeout: timeout,
        onSuccess: (json) =>
            List<LogModel>.from(json.map((e) => LogModel.fromJson(e))),
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Downloads logs as a ZIP archive.
  ///
  /// Returns raw ZIP bytes.
  ///
  /// Parameters:
  /// - [level]: Optional log level filter.
  /// - [source]: Optional log source filter.
  /// - [dateFrom]: Optional start date filter.
  /// - [dateTo]: Optional end date filter.
  /// - [limit]: Optional maximum number of results.
  /// - [client]: Optional HTTP client for testing.
  /// - [timeout]: Per-request timeout override.
  Future<Uint8List> downloadZip({
    TefIPLogLevel? level,
    TefIPLogSource? source,
    DateTime? dateFrom,
    DateTime? dateTo,
    int? limit,
    http.Client? client,
    Duration? timeout,
  }) async {
    try {
      return await TefIPNetworkingClient.getBytes(
        url: TefIpUrlBuilder.build(
          TefIPEndpoints.logsZip,
          queryParams: _buildQueryParams(
            level: level,
            source: source,
            dateFrom: dateFrom,
            dateTo: dateTo,
            limit: limit,
          ),
        ),
        client: client,
        timeout: timeout,
      );
    } on ClientException catch (e) {
      throw TefIPRequestException(message: e.message, statusCode: -1);
    } on TefIPRequestException {
      rethrow;
    } catch (e) {
      throw TefIPUnexpectedException(exception: e);
    }
  }

  /// Opens a real-time SSE stream of log events.
  ///
  /// Cancel the returned [Stream] subscription to close the connection.
  ///
  /// Parameters:
  /// - [client]: Optional HTTP client for testing.
  /// - [timeout]: Applied only to the initial connection handshake.
  Stream<LogModel> stream({http.Client? client, Duration? timeout}) {
    return TefIPNetworkingClient.stream<LogModel>(
      url: TefIpUrlBuilder.build(TefIPEndpoints.logsStream),
      fromJson: LogModel.fromJson,
      client: client,
      timeout: timeout,
    );
  }
}
