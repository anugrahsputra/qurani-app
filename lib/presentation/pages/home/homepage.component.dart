part of 'homepage.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key, required this.tabController, required this.appNavigator});

  final TabController tabController;
  final AppNavigator appNavigator;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppbarBloc, AppbarState>(
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: AppColors.primaryContainer,
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
          centerTitle: false,
          actions: [
            WidgetSwitcher(
              isWidgetSwitched: state.displayAppbar,
              switchWidget1: IconButton(
                tooltip: 'Halaman Bookmark',
                iconSize: 25,
                icon: const Icon(Icons.bookmark),
                color: AppColors.onPrimary,
                onPressed: () => appNavigator.goToBookmarks(context),
              ),
              switchWidget2: const SizedBox.shrink(),
            ),
            WidgetSwitcher(
              isWidgetSwitched: state.displayAppbar,
              switchWidget1: IconButton(
                tooltip: 'Halaman Pencarian',
                iconSize: 25,
                icon: const Icon(Icons.search_rounded),
                color: AppColors.onPrimary,
                onPressed: () => appNavigator.goToSearch(context),
              ),
              switchWidget2: const SizedBox.shrink(),
            ),
          ],
          title: WidgetSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            reverseDuration: Duration.zero,
            isWidgetSwitched: state.displayAppbar,
            switchWidget1: Text(
              'Quraani',
              style: GoogleFonts.poppins(
                color: AppColors.onPrimary,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            switchWidget2: const SizedBox.shrink(),
          ),
          toolbarHeight: 50,
          collapsedHeight: 100.h,
          expandedHeight: 0.42.sh,
          elevation: 0,
          pinned: true,
          floating: false,
          snap: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(25.h),
            child: Container(
              width: double.infinity.w,
              padding: EdgeInsets.symmetric(vertical: 15.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
                color: AppColors.background,
              ),
              child: Column(
                children: [
                  Container(
                    width: 0.2.sw,
                    height: 4.h,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  const Gap(10),
                  const Text(
                    'Daftar Surat',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          flexibleSpace: const FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: DisplayBanner(),
          ),
        );
      },
    );
  }
}

class DisplayBanner extends StatefulWidget {
  const DisplayBanner({super.key});

  @override
  State<DisplayBanner> createState() => _DisplayBannerState();
}

class _DisplayBannerState extends State<DisplayBanner> with PrayerTimeMixin {
  final PrayerTimeCubit prayerTimeCubit = sl<PrayerTimeCubit>();
  final TimeStream _timeStream = sl<TimeStream>();

  String address = '';
  late tz.TZDateTime _currentTime;
  late StreamSubscription<DateTime> _timeSubscription;

  @override
  void initState() {
    super.initState();

    _timeSubscription = _timeStream.stream.listen((time) {
      final timezone = tz.getLocation("Asia/Jakarta"); // hardcoded IANA timezone
      _currentTime = tz.TZDateTime.from(time, timezone);
    });
  }

  Future<void> _fetchAddress(double lat, double lng) async {
    final result = await prayerTimeCubit.getAddressFromCoordinates(lat, lng);
    if (mounted) {
      setState(() {
        address = result;
      });
    }
  }

  @override
  void dispose() {
    _timeSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PrayerTimeCubit, PrayerTimeState>(
      listener: (context, state) {
        if (state is LocationLoaded) {
          _fetchAddress(state.location.latitude, state.location.longitude);
        }
      },
      child: BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
        builder: (context, state) {
          if (state is PrayerTimeInitial || state is PrayerTimeLoading) {
            return _bannerLoading();
          } else if (state is LocationPermissionDenied) {
            return const SizedBox.shrink();
          } else if (state is LocationLoaded) {
            PrayerTimes prayerTime = state.prayerTime;
            return _bannerLoaded(prayerTime);
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _bannerLoaded(PrayerTimes prayerTime) {
    final timeMap = getCurrentPrayerTimeMap(DateTime.now(), prayerTime);
    final currentPrayerTime = timeMap['current'];
    final imagePath = getImagePath(currentPrayerTime);

    return Stack(
      children: [
        // Background image
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeInOut,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: AppColors.primaryContainer.withValues(alpha: 0.8)),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
        ),
        // Foreground content
        Positioned(
          top: 0.06.sh,
          left: 0.015.sh,
          right: 0.015.sh,
          child: Column(
            children: [
              StreamBuilder<DateTime>(
                stream: _timeStream.stream,
                builder: (context, snapshot) {
                  final currentTime = snapshot.data ?? DateTime.now();
                  final currentTimeString = dt.DateFormat('HH:mm').format(currentTime);
                  return BannerWidget(
                    currentTimeString: currentTimeString,
                    currentPrayerTime: currentPrayerTime,
                    address: address,
                    textColor: getTextColor(currentPrayerTime),
                  );
                },
              ),
              const Gap(20),
              StreamBuilder<DateTime>(
                stream: _timeStream.stream,
                builder: (context, snapshot) {
                  final currentTimeString = dt.DateFormat(
                    'HH:mm',
                  ).format(snapshot.data ?? DateTime.now());
                  return PrayerSchedule(currentTime: currentTimeString);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bannerLoading() {
    return Stack(
      children: [
        Container(
          color: AppColors.primaryContainer,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          top: 0.04.sh,
          left: 0.015.sh,
          right: 0.015.sh,
          child: Column(
            children: [
              BannerWidget(
                currentTimeString: "",
                currentPrayerTime: 'Loading...',
                address: 'Loading...',
              ),
              const Gap(20),
              PrayerSchedule(currentTime: ""),
            ],
          ),
        ),
      ],
    );
  }
}

class BuildDates extends StatelessWidget with PrayerTimeMixin {
  const BuildDates({super.key, required this.prayerTimes});

  final String prayerTimes;

  @override
  Widget build(BuildContext context) {
    final location = tz.getLocation('Asia/Jakarta');
    final now = tz.TZDateTime.now(location);

    final textColor = getTextColor(prayerTimes);

    /// Subtract 1 day from the current date
    final adjustedNow = now.subtract(const Duration(days: 1));

    /// The Hijri calendar is offset by 1 day, so we need to subtract 1 day
    var hijriCalendar = hijri.HijriCalendar.fromDate(adjustedNow);
    String formattedHijriDate =
        '${hijriCalendar.hDay} ${hijriCalendar.longMonthName} ${hijriCalendar.hYear} AH';

    String formattedGregorianDate = dt.DateFormat('EEEE, d MMMM', 'id_ID').format(now);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formattedGregorianDate,
          style: TextStyle(fontSize: 16.sp, color: textColor, fontWeight: FontWeight.w600),
        ),
        Text(
          formattedHijriDate,
          style: TextStyle(fontSize: 14.sp, color: textColor, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}

class PrayerSchedule extends StatelessWidget with PrayerTimeMixin {
  const PrayerSchedule({super.key, required this.currentTime});

  final String currentTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        if ((state is PrayerTimeInitial) && (state is PrayerTimeLoading)) {
          return const PrayerScheduleLoading().redacted(context: context, redact: true);
        } else if (state is LocationPermissionDenied) {
          return const PrayerScheduleLoading().redacted(context: context, redact: true);
        } else if (state is LocationLoaded) {
          var prayerTime = state.prayerTime;
          final now = DateTime.now();
          final highlightedPrayerTime = getCurrentPrayerTimeMap(now, prayerTime);
          String next = highlightedPrayerTime['next'];
          final timeRemaining = highlightedPrayerTime['remainingTime'];
          Color titleColor = getTextColor(currentTime);
          final prayerTimes = getPrayerSchedule(prayerTime);
          final prayerTimeIcon = getPrayerIcon(prayerTime);

          String text = 'Shalat $next ${formatDuration(timeRemaining)}';

          return PrayerScheduleWidget(
            text: text,
            color: titleColor,
            prayerTimes: prayerTimes,
            prayerTimeIcon: prayerTimeIcon,
            highlightedPrayerTime: highlightedPrayerTime,
          );
        } else {
          return const PrayerScheduleLoading().redacted(context: context, redact: true);
        }
      },
    );
  }
}

class SurahCards extends StatelessWidget {
  SurahCards({super.key});

  final AppNavigator appNavigator = sl<AppNavigator>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahBloc, SurahState>(
      builder: (context, state) {
        if (state is SurahLoaded) {
          List<SurahEntity> surahs = state.listSurah;
          return SliverList.builder(
            itemCount: surahs.length,
            itemBuilder: (context, index) {
              final surah = state.listSurah[index];
              return InkWell(
                onTap: () => appNavigator.goToDetail(context, surahNumber: surah.number),
                child: SurahCardView(surah: surah),
              );
            },
          );
        } else if (state is SurahLoading) {
          return SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 1.sw, vertical: 1.sh),
                height: 75.sh,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              ).redacted(context: context, redact: true);
            },
          );
        } else {
          return const SliverFillRemaining(
            child: Center(child: Text('Terjadi kesalahan, Coba lagi nanti')),
          );
        }
      },
    );
  }
}