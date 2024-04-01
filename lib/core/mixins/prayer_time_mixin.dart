import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';

import '../core.dart';

mixin PrayerTimeMixin {
  Map<String, dynamic> getCurrentPrayerTimeMap(
    DateTime current,
    PrayerTimes prayerTimes,
  ) {
    String currentPrayerTime = '';
    String nextPrayerTime = '';
    DateTime time;
    Duration remainingTime;
    String icon = '';

    if (current.isBefore(prayerTimes.dhuhr)) {
      icon = SvgPath.fajr;
      currentPrayerTime = 'Subuh';
      nextPrayerTime = 'Dzuhur';
      time = prayerTimes.dhuhr;
      remainingTime = time.difference(current);
    } else if (current.isBefore(prayerTimes.asr)) {
      icon = SvgPath.dzuhr;
      currentPrayerTime = 'Dzuhur';
      nextPrayerTime = 'Ashar';
      time = prayerTimes.asr;
      remainingTime = time.difference(current);
    } else if (current.isBefore(prayerTimes.maghrib)) {
      icon = SvgPath.asr;
      currentPrayerTime = 'Ashar';
      nextPrayerTime = 'Magrib';
      time = prayerTimes.maghrib;
      remainingTime = time.difference(current);
    } else if (current.isBefore(prayerTimes.isha)) {
      icon = SvgPath.maghrib;
      currentPrayerTime = 'Magrib';
      nextPrayerTime = 'Isya';
      time = prayerTimes.isha;
      remainingTime = time.difference(current);
    } else {
      icon = SvgPath.isha;
      currentPrayerTime = 'Isya';
      nextPrayerTime = 'Subuh';
      time = prayerTimes.fajr;
      remainingTime = time.add(const Duration(days: 1)).difference(current);
    }

    return {
      'icon': icon,
      'current': currentPrayerTime,
      'next': nextPrayerTime,
      'time': time,
      'remainingTime': remainingTime,
    };
  }

  Map<String, dynamic> getPrayerSchedule(PrayerTimes prayerTimes) {
    final prayerTime = {
      'Subuh': prayerTimes.fajr,
      // 'Matahari Terbit': prayerTimes.sunrise,
      'Dzuhur': prayerTimes.dhuhr,
      'Ashar': prayerTimes.asr,
      'Magrib': prayerTimes.maghrib,
      'Isya': prayerTimes.isha,
    };

    return prayerTime;
  }

  Map<String, dynamic> getPrayerIcon(PrayerTimes prayerTimes) {
    return {
      'Subuh': SvgPath.fajr,
      'Dzuhur': SvgPath.dzuhr,
      'Ashar': SvgPath.asr,
      'Magrib': SvgPath.maghrib,
      'Isya': SvgPath.isha,
    };
  }

  String getImagePath(String currentPrayerTime) {
    switch (currentPrayerTime) {
      case 'Subuh':
        return BgPaths.fajr;
      case 'Dzuhur':
        return BgPaths.dhuhr;
      case 'Ashar':
        return BgPaths.asr;
      case 'Magrib':
        return BgPaths.maghrib;
      case 'Isya':
        return BgPaths.isha;
      default:
        return BgPaths.isha;
    }
  }

  Color getTextColor(String currentPrayerTime) {
    switch (currentPrayerTime) {
      case 'Subuh':
        return Colors.white;
      case 'Dzuhur':
        return Colors.black;
      case 'Ashar':
        return Colors.white;
      case 'Magrib':
        return Colors.white;
      case 'Isya':
        return Colors.white;
      default:
        return Colors.white;
    }
  }
}
