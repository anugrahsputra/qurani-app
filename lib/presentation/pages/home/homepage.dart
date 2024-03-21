import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart' as hijri;
import 'package:intl/intl.dart' as dt;
import 'package:timezone/timezone.dart' as tz;

import '../../../../../core/core.dart';
import '../../../../../injection.dart';
import '../../../features/ayah/ayah.dart';
import '../../../features/surah/surah.dart';
import '../../presentation.dart';

part 'homepage.component.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final SurahBloc surahBloc = sl<SurahBloc>();
  final AyahsBloc ayahsBloc = sl<AyahsBloc>();
  final PrayerTimeCubit prayerTimeCubit = sl<PrayerTimeCubit>();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      surahBloc.add(const OnGetSurah());
      ayahsBloc.add(const OnGetRandomAyah());
      prayerTimeCubit.getLocation();
    });
  }

  Future<void> pullToRefresh() async {
    surahBloc.add(const OnGetSurah());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => surahBloc,
        ),
        BlocProvider(
          create: (context) => ayahsBloc,
        ),
        BlocProvider(
          create: (context) => prayerTimeCubit,
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<SurahBloc, SurahState>(
            listener: (context, state) {
              if (state is SurahError) {
                AppSnackbar.showError(context, state.message);
              }
            },
          ),
          BlocListener<PrayerTimeCubit, PrayerTimeState>(
            listener: (context, state) {
              if (state is LocationInitial) {
                prayerTimeCubit.requestPermission();
              } else if (state is LocationPermissionGranted) {
                prayerTimeCubit.getLocation();
              } else if (state is LocationPermissionDenied) {
                AppSnackbar.showError(context, 'Location permission denied');
              }
            },
          ),
        ],
        child: AppScaffold(
          appBar: AppBar(
            title: const BuildLocation(),
          ),
          body: const Column(
            children: [
              BannerContainer(),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
