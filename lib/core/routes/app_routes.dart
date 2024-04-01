import 'package:flutter/material.dart';

import '../../presentation/presentation.dart';
import '../core.dart';

abstract class AppRoutes {
  // TODO: Change this to splash page
  static String get initial => AppPages.home;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.home: (context) => const Homepage(),
    // AppPages.splash: (context) => const SplashPage(),
    AppPages.detail: (context) {
      Map<String, dynamic> args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      int surahNumber = args['surahNumber'];
      return DetailSurahPage(surahNumber: surahNumber);
    },
    AppPages.bookmark: (context) => const BookmarksPage(),
  };
}
