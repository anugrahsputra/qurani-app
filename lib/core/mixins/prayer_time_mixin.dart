import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';

import '../core.dart';

mixin PrayerTimeMixin {
  Map<String, dynamic> getCurrentPrayerTimeMap(
      DateTime current, PrayerTimes prayerTimes) {
    List<Map<String, dynamic>> prayerTimeList = [
      {
        'time': prayerTimes.fajr,
        'current': 'Subuh',
        'next': 'Dzuhur',
        'icon': SvgPath.fajr
      },
      {
        'time': prayerTimes.dhuhr,
        'current': 'Dzuhur',
        'next': 'Ashar',
        'icon': SvgPath.dzuhr
      },
      {
        'time': prayerTimes.asr,
        'current': 'Ashar',
        'next': 'Magrib',
        'icon': SvgPath.asr
      },
      {
        'time': prayerTimes.maghrib,
        'current': 'Magrib',
        'next': 'Isya',
        'icon': SvgPath.maghrib
      },
      {
        'time': prayerTimes.isha,
        'current': 'Isya',
        'next': 'Subuh',
        'icon': SvgPath.isha
      },
    ];

    for (int i = 0; i < prayerTimeList.length; i++) {
      if (current.isBefore(prayerTimeList[i]['time'])) {
        DateTime time = prayerTimeList[i]['time'];
        Duration remainingTime = time.difference(current);
        return {
          'icon': prayerTimeList[i]['icon'],
          'current': prayerTimeList[i]['current'],
          'next': prayerTimeList[i]['next'],
          'time': time,
          'remainingTime': remainingTime,
        };
      }
    }

    DateTime time = prayerTimes.fajr;
    Duration remainingTime =
        time.add(const Duration(days: 1)).difference(current);
    return {
      'icon': SvgPath.isha,
      'current': 'Isya',
      'next': 'Subuh',
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
