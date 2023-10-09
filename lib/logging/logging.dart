import 'dart:convert';

import 'package:character_viewer/build_flavor.dart';
import 'package:character_viewer/logging/log_buffer.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:stack_trace/stack_trace.dart';

const repositoryLogPrefix = 'Repository';
const _appNamePrefix = 'c_v';
const _appNameLogPrefix = '[$_appNamePrefix]';

final _logDateFormat = DateFormat('MM-dd hh:mm:ss.SSS');

final _uncaughtErrorLogger = Logger('_uncaught_errors');

final _logLevelMaxWidth = Level.LEVELS.fold(
    0, (int max, level) => level.name.length > max ? level.name.length : max);

void setupLogging(BuildFlavorConfiguration configuration) {
  Logger.root
    ..level = Level.ALL
    ..onRecord.listen((LogRecord record) {
      if (record.loggerName == _uncaughtErrorLogger.name) return;

      debugPrint(_createLogFromRecord(record), wrapWidth: 1024);
    });

  hierarchicalLoggingEnabled = true;

  if (configuration.useDebugMode) {
    Logger(repositoryLogPrefix).level = Level.WARNING;
  }
}

void setupAdditionalLogging(
  LogBuffer logBuffer,
) {
  Logger.root.onRecord.listen((record) {
    _addLogRecordToBuffer(logBuffer, record);
  });

  _setUpFlutterErrorHandler();
}

void _addLogRecordToBuffer(LogBuffer logBuffer, LogRecord record) {
  logBuffer.push(_createLogFromRecord(record)!);
}

class _UncaughtError {
  final Object error;
  final StackTrace stackTrace;
  final bool isSilent;

  _UncaughtError(
      {required this.error, required this.stackTrace, required this.isSilent});
}

void _setUpFlutterErrorHandler() {
  FlutterError.onError = (errorDetails) async {
    FlutterError.dumpErrorToConsole(errorDetails, forceReport: true);
    final uncaughtError = _UncaughtError(
      error: errorDetails.exception,
      stackTrace: errorDetails.stack!,
      isSilent: errorDetails.silent,
    );

    if (errorDetails.silent) {
      // Silent errors are informational but not serious.
      _uncaughtErrorLogger.warning(
          'Uncaught silent exception: Not reported (silent)',
          uncaughtError,
          errorDetails.stack);
      return;
    }
    _uncaughtErrorLogger.severe(
        'Uncaught exception: Not Reported (exportErrors=false)',
        uncaughtError,
        errorDetails.stack);
  };
}

String? _createLogFromRecord(LogRecord record) {
  final level = record.level.name.padRight(_logLevelMaxWidth);
  final timestamp = _logDateFormat.format(record.time);
  var error = record.error;
  var stackTrace = _traceFromStackTrace(record?.stackTrace);
  var message = record.message;

  if (record.error is _UncaughtError) {
    final uncaughtError = record.error as _UncaughtError;
    error = uncaughtError.error;
    stackTrace = _traceFromStackTrace(uncaughtError.stackTrace);
    if (uncaughtError.isSilent) {
      message = 'Uncaught silent error: $message';
    } else {
      message = 'Uncaught error: $message';
    }
  }

  return prefixLines(
      ['$level: $timestamp: $message', error, stackTrace]
          .where((line) => line != null)
          .join('\n'),
      '$_appNameLogPrefix[${record.loggerName}] ');
}

Trace? _traceFromStackTrace(StackTrace? stackTrace) =>
    stackTrace != null ? Trace.from(stackTrace)?.terse : null;

String? prefixLines(String message, String prefix) {
  if (message == null) return null;
  if (message.isEmpty) return prefix;
  return LineSplitter.split(message).map((line) => '$prefix$line').join('\n');
}
