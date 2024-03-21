import 'package:adhan/adhan.dart';

Map<String, dynamic> getCurrentPrayerTimeMap(
    DateTime current, PrayerTimes prayerTimes) {
  String currentPrayerTime = '';
  String nextPrayerTime = '';
  Duration remainingTime;

  if (current.isBefore(prayerTimes.sunrise)) {
    currentPrayerTime = 'Subuh';
    nextPrayerTime = '☀️ Terbit';
    remainingTime = prayerTimes.sunrise.difference(current);
  } else if (current.isBefore(prayerTimes.dhuhr)) {
    currentPrayerTime = '☀️ Terbit';
    nextPrayerTime = 'Dzuhur';
    remainingTime = prayerTimes.dhuhr.difference(current);
  } else if (current.isBefore(prayerTimes.asr)) {
    currentPrayerTime = 'Dzuhur';
    nextPrayerTime = 'Ashar';
    remainingTime = prayerTimes.asr.difference(current);
  } else if (current.isBefore(prayerTimes.maghrib)) {
    currentPrayerTime = 'Ashar';
    nextPrayerTime = 'Magrib';
    remainingTime = prayerTimes.maghrib.difference(current);
  } else if (current.isBefore(prayerTimes.isha)) {
    currentPrayerTime = 'Magrib';
    nextPrayerTime = 'Isya';
    remainingTime = prayerTimes.isha.difference(current);
  } else {
    currentPrayerTime = 'Isya';
    nextPrayerTime = 'Subuh';
    remainingTime =
        prayerTimes.fajr.add(const Duration(days: 1)).difference(current);
  }

  return {
    'current': currentPrayerTime,
    'next': nextPrayerTime,
    'remaining': remainingTime
  };
}
