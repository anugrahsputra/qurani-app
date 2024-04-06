import 'package:flutter/material.dart';

import '../../presentation/presentation.dart';
import '../core.dart';

abstract class AppRoutes {
  static String get initial => AppPages.home;

  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppPages.home: (context) => const Homepage(),
    AppPages.detail: (context) {
      Map<String, dynamic> args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      int surahNumber = args['surahNumber'];
      return DetailSurahPage(surahNumber: surahNumber);
    },
    AppPages.ayah: (context) {
      Map<String, dynamic> args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
      int surahNumber = args['surahNumber'];
      int ayahNumber = args['ayahNumber'];
      return AyahPage(ayahNumber: ayahNumber, surahNumber: surahNumber);
    },
    AppPages.bookmark: (context) => const BookmarksPage(),
  };
}
