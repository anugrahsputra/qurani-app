import 'dart:async';
import 'dart:ui';

import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hijri/hijri_calendar.dart' as hijri;
import 'package:intl/intl.dart' as dt;
import 'package:logging/logging.dart';
import 'package:redacted/redacted.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../../../../core/core.dart';
import '../../../../../injection.dart';
import '../../../features/ayah/ayah.dart';
import '../../../features/surah/surah.dart';
import '../../presentation.dart';

part 'homepage.component.dart';
part 'homepage.widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  final SurahBloc surahBloc = sl<SurahBloc>();
  final AyahsBloc ayahsBloc = sl<AyahsBloc>();
  final AppbarBloc appbarBloc = sl<AppbarBloc>();
  final PrayerTimeCubit prayerTimeCubit = sl<PrayerTimeCubit>();
  final AppNavigator appNavigator = sl<AppNavigator>();
  final ScrollController controller = ScrollController();

  late TabController tabController;

  String? message;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (BlocProvider.of<AppbarBloc>(context).state.displayAppbar &&
          controller.offset < 0.2.sh) {
        BlocProvider.of<AppbarBloc>(context).add(
          const ToggleDisplay(),
        );
      } else if (!BlocProvider.of<AppbarBloc>(context).state.displayAppbar &&
          controller.offset > 0.2.sh) {
        BlocProvider.of<AppbarBloc>(context).add(
          const ToggleDisplay(),
        );
      }
    });
    tabController = TabController(length: 2, vsync: this);
    Future.microtask(() {
      prayerTimeCubit.getLoc();
      surahBloc.add(const OnGetSurah());
      ayahsBloc.add(const OnGetRandomAyah());
    });
  }

  Future<void> pullToRefresh() async {
    surahBloc.add(const OnGetSurah());
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
                message = state.message;
                AppSnackbar.showError(context, message ?? state.message);
              }
              if (state is LocationError) {
                AppSnackbar.showError(context, state.message);
              }
            },
          ),
        ],
        child: AppScaffold(
          body: BlocBuilder<AppbarBloc, AppbarState>(
            builder: (context, state) {
              return Stack(
                children: [
                  CustomScrollView(
                    controller: controller,
                    slivers: [
                      HomeAppbar(
                        tabController: tabController,
                        appNavigator: appNavigator,
                      ),
                      SurahCards(),
                    ],
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 700),
                    curve: Easing.emphasizedAccelerate,
                    bottom: state.displayAppbar ? -100.h : 25.h,
                    left: 100.w,
                    right: 100.w,
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(45.r),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.shadow.withOpacity(0.85),
                            offset: const Offset(8, 6),
                            blurRadius: 14,
                            spreadRadius: -8,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            tooltip: 'Halaman Bookmark',
                            iconSize: 20,
                            icon: const Icon(Icons.bookmark),
                            color: AppColors.onBackground,
                            onPressed: () =>
                                appNavigator.goToBookmarks(context),
                          ),
                          IconButton(
                            tooltip: 'Halaman jadwal shalat',
                            iconSize: 20,
                            icon: const Icon(Icons.access_time),
                            color: AppColors.onBackground,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
