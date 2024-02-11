import 'package:flutter/material.dart';

import '../../features/surah/surah.dart';
import '../core.dart';

abstract class AppRoutes {
  // TODO: Change this to splash page
  static String get initial => AppPages.home;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.home: (context) => const Homepage(),
    // AppPages.splash: (context) => const SplashPage(),
  };
}
