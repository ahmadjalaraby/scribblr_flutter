import 'package:logger/logger.dart';


/// {@template app_logger}
/// App Logger Library
/// {@endtemplate}
class AppLogger {
  /// {@macro app_logger}
  factory AppLogger() {
    _instance ??= AppLogger._(Logger());
    return _instance!;
  }

  /// A named constructor for AppLogger
  AppLogger._(this._logger);

  /// Logger class
  final Logger _logger;

  /// A singleton instance of the class [AppLogger]
  static AppLogger? _instance;

  /// Log a trace to the console
  void trace(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.t(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log a debug to the console
  void debug(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.d(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log info to the console
  void info(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.i(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log a warning to the console
  void warning(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.w(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log an error to the console
  void error(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.e(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }

  /// Log a fatal to the console
  void fatal(
    dynamic message, {
    DateTime? time,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.f(
      message,
      time: time,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
