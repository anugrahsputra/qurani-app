import 'dart:developer';

import 'package:logging/logging.dart';

abstract class CustomLog {
  static bool isInitialize = false;

  static Future<void> initialize({bool showLog = false}) async {
    if (!CustomLog.isInitialize) {
      Logger.root.level = showLog ? Level.ALL : Level.OFF;

      Logger.root.onRecord.listen((record) {
        final level = record.level;
        final name = record.loggerName;
        final message = record.message;
        final strackTrace = record.stackTrace;
        final error = record.error;

        if (level == Level.FINE ||
            level == Level.FINER ||
            level == Level.FINEST) {
          log('✅ ${level.name} "$name" : $message');
        } else if (level == Level.SEVERE ||
            level == Level.SHOUT ||
            level == Level.WARNING) {
          log('⛔ ${level.name} "$name" : $message${error != null ? '\nError : $error' : ''}${strackTrace != null ? '\n$strackTrace' : ''}');
        } else if (level == Level.INFO || level == Level.CONFIG) {
          log('ℹ️ ${level.name} "$name" : $message');
        }
      });

      CustomLog.isInitialize = true;
    }
  }
}
