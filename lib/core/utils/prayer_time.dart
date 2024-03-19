import 'package:adhan/adhan.dart';

String getCurrentPrayerTime(DateTime current, PrayerTimes prayerTimes) {
  String currentPrayerTime = '';

  if (current.isBefore(prayerTimes.fajr)) {
    currentPrayerTime = 'Fajr';
  } else if (current.isBefore(prayerTimes.sunrise)) {
    currentPrayerTime = 'Sunrise';
  } else if (current.isBefore(prayerTimes.dhuhr)) {
    currentPrayerTime = 'Dhuhr';
  } else if (current.isBefore(prayerTimes.asr)) {
    currentPrayerTime = 'Asr';
  } else if (current.isBefore(prayerTimes.maghrib)) {
    currentPrayerTime = 'Maghrib';
  } else if (current.isBefore(prayerTimes.isha)) {
    currentPrayerTime = 'Isha';
  } else {
    currentPrayerTime = 'Fajr';
  }

  return currentPrayerTime;
}

Map<String, dynamic> getCurrentPrayerTimeMap(
    DateTime current, PrayerTimes prayerTimes) {
  String currentPrayerTime = '';
  String nextPrayerTime = '';
  Duration remainingTime;

  if (current.isBefore(prayerTimes.sunrise)) {
    currentPrayerTime = 'Fajr';
    nextPrayerTime = 'Sunrise';
    remainingTime = prayerTimes.sunrise.difference(current);
  } else if (current.isBefore(prayerTimes.dhuhr)) {
    currentPrayerTime = 'Sunrise';
    nextPrayerTime = 'Dhuhr';
    remainingTime = prayerTimes.dhuhr.difference(current);
  } else if (current.isBefore(prayerTimes.asr)) {
    currentPrayerTime = 'Dhuhr';
    nextPrayerTime = 'Asr';
    remainingTime = prayerTimes.asr.difference(current);
  } else if (current.isBefore(prayerTimes.maghrib)) {
    currentPrayerTime = 'Asr';
    nextPrayerTime = 'Maghrib';
    remainingTime = prayerTimes.maghrib.difference(current);
  } else if (current.isBefore(prayerTimes.isha)) {
    currentPrayerTime = 'Maghrib';
    nextPrayerTime = 'Isha';
    remainingTime = prayerTimes.isha.difference(current);
  } else {
    currentPrayerTime = 'Isha';
    nextPrayerTime = 'Fajr';
    remainingTime =
        prayerTimes.fajr.add(const Duration(days: 1)).difference(current);
  }

  return {
    'current': currentPrayerTime,
    'next': nextPrayerTime,
    'remaining': remainingTime
  };
}
