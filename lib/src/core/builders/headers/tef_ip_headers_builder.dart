import 'package:meta/meta.dart';

@immutable
@internal
abstract class TefIPHeadersBuilder {
  static String? _username;

  static String? _password;

  static Map<String, dynamic> _additionalHeadersToRequests = {};

  @internal
  static set username(String? username) {
    _username = username;
  }

  static String get username => _username ?? '';

  @internal
  static set password(String? password) {
    _password = password;
  }

  static String get password => _password ?? '';

  @internal
  static Map<String, String> build({Map<String, dynamic>? additionalHeader}) {
    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      'Authorization': 'Basic $username:$password',
    };

    headers = {
      ...headers,
      ..._additionalHeadersToRequests,
      ...?additionalHeader,
    };

    return headers;
  }

  @internal
  static void includeHeaders(Map<String, dynamic> headers) {
    _additionalHeadersToRequests = {
      ..._additionalHeadersToRequests,
      ...headers,
    };
  }
}
