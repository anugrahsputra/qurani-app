import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logging/logging.dart';
import 'package:qurani/app.dart';

import 'core/core.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: kDebugMode);
  final Logger log = Logger('main');
  runZonedGuarded(
    () async {
      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await initialize();

      FlutterNativeSplash.remove();
    },
    (error, stack) async {
      log.severe(
        'runZonedGuarded: Caught error',
        error,
        stack,
      );
    },
  );
}
