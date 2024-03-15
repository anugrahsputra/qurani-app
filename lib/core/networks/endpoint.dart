abstract class Endpoint {
  static String get _quranBaseUrl => "https://api.quran.gading.dev/";
  static String get _audioBaseUrl => "https://api.quran.com/api/v4/";

  static String get recitalSurah => "${_audioBaseUrl}chapter_recitations/7/";

  static String get surah => "${_quranBaseUrl}surah";
  static String get ayah => "${_quranBaseUrl}surah";
}
