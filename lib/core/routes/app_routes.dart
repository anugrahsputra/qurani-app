import 'package:flutter/material.dart';

import '../../presentation/presentation.dart';
import '../core.dart';

abstract class AppRoutes {
  static String get initial => AppPages.splash;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.splash: (context) => const SplashPage(),
    AppPages.home: (context) => const Homepage(),
    AppPages.detail: (context) {
      Map<String, dynamic> args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      int surahNumber = args['surahNumber'];
      return DetailSurahPage(surahNumber: surahNumber);
    },
    AppPages.bookmark: (context) => const BookmarksPage(),
  };
}
