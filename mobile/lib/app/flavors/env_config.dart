import 'package:logger/logger.dart';

import '/app/core/values/app_values.dart';

class EnvConfig {
  final String appName;
  final String? appVersion;
  final String webBaseUrl;
  final String apiBaseUrl;
  final bool shouldCollectCrashLog;
  final String basicAuthenUserId;
  final String basicAuthenPassword;
  final String androidAppId;
  final String iOSAppId;

  late final Logger logger;

  EnvConfig({
    required this.appName,
    this.appVersion,
    required this.webBaseUrl,
    required this.apiBaseUrl,
    this.shouldCollectCrashLog = false,
    this.basicAuthenUserId = '',
    this.basicAuthenPassword = '',
    this.androidAppId = '',
    this.iOSAppId = '',
  }) {
    logger = Logger(
      printer: PrettyPrinter(
          methodCount: AppValues.loggerMethodCount,
          // number of method calls to be displayed
          errorMethodCount: AppValues.loggerErrorMethodCount,
          // number of method calls if stacktrace is provided
          lineLength: AppValues.loggerLineLength,
          // width of the output
          colors: true,
          // Colorful log messages
          printEmojis: true,
          // Print an emoji for each log message
          printTime: false // Should each log print contain a timestamp
          ),
    );
  }
}
