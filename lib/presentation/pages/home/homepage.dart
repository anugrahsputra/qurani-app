import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart' as hijri;
import 'package:intl/intl.dart' as dt;
import 'package:redacted/redacted.dart';
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
  final AppbarBloc appbarBloc = sl<AppbarBloc>();
  final AppNavigator appNavigator = sl<AppNavigator>();
  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      prayerTimeCubit.getLoc();
      surahBloc.add(const OnGetSurah());
      ayahsBloc.add(const OnGetRandomAyah());
    });
    controller.addListener(() {
      if (BlocProvider.of<AppbarBloc>(context).state.displayAppbar &&
          controller.offset < 200) {
        BlocProvider.of<AppbarBloc>(context).add(
          const ToggleDisplay(),
        );
      } else if (!BlocProvider.of<AppbarBloc>(context).state.displayAppbar &&
          controller.offset > 200) {
        BlocProvider.of<AppbarBloc>(context).add(
          const ToggleDisplay(),
        );
      }
    });
  }

  Future<void> pullToRefresh() async {
    surahBloc.add(const OnGetSurah());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
              if (state is LocationPermissionDenied) {
                AppSnackbar.showError(context, 'Location permission denied');
              }
            },
          ),
        ],
        child: AppScaffold(
          body: CustomScrollView(
            controller: controller,
            slivers: [
              const HomeAppbar(),
              SurahCards(),
            ],
          ),
        ),
      ),
    );
  }
}
