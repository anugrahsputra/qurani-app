import 'package:flutter/material.dart';

import '../../presentation.dart';

class PrayerSchedulePage extends StatelessWidget {
  const PrayerSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text(
          'Jadwal Shalat',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: Text('Oops! This page still under construction!',
            style: TextStyle(fontWeight: FontWeight.w800)),
      ),
    );
  }
}
