import 'dart:io';

abstract class Endpoint {
  static String get _quranBaseUrl => "https://api.quran.gading.dev/";
  static String get _quranBaseUrlAndroidDebug =>
      "http://10.0.2.2:3000/"; // android
  static String get _quranBaseUrlIosDebug => "http://10.0.2.2:3000/"; // android
  static String get _audioBaseUrl => "https://api.quran.com/api/v4/";

  static bool get isAndroid => Platform.isAndroid;

  static String get _quranBaseUrlDebug =>
      isAndroid ? _quranBaseUrlAndroidDebug : _quranBaseUrlIosDebug;

  static String get recitalSurah => "${_audioBaseUrl}chapter_recitations/7/";

  static String get surah => "${_quranBaseUrl}surah";
  static String get ayah => "${_quranBaseUrl}surah";
}
