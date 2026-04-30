import 'package:dart_tefip/dart_tefip.dart';

const kLogId = 42;

final kLog = LogModel(
  id: kLogId,
  level: TefIPLogLevel.error,
  source: TefIPLogSource.app,
  message: 'Test error message',
  details: 'Some detail',
  createdAt: DateTime.fromMillisecondsSinceEpoch(1700000000000),
);
