part of 'homepage.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppbarBloc, AppbarState>(
      builder: (context, state) {
        return SliverAppBar(
          backgroundColor: AppColors.primaryContainer,
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
          centerTitle: false,
          title: AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            reverseDuration: Duration.zero,
            child: state.displayAppbar
                ? Text(
                    'Quranee',
                    style: TextStyle(
                      color: AppColors.onPrimary,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          toolbarHeight: 50,
          collapsedHeight: 50,
          expandedHeight: 0.364.sh,
          elevation: 0,
          pinned: true,
          floating: false,
          snap: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(28.h),
            child: Container(
              width: double.infinity.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.r),
                ),
                color: AppColors.background,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: Container(
                      width: 0.2.sw,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
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
  const DisplayBanner({
    super.key,
  });

  @override
  State<DisplayBanner> createState() => _DisplayBannerState();
}

class _DisplayBannerState extends State<DisplayBanner> with PrayerTimeMixin {
  final PrayerTimeCubit prayerTimeCubit = sl<PrayerTimeCubit>();
  final TimeStream _timeStream = sl<TimeStream>();

  final Logger _log = Logger('DisplayBanner');

  String address = '';
  String _currentTimeString = '';
  late tz.TZDateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _timeStream.stream.listen((time) {
      final timezone = tz.getLocation('Asia/Jakarta');
      final currentTime = tz.TZDateTime.from(time, timezone);
      setState(() {
        _currentTime = currentTime;
        _currentTimeString = dt.DateFormat('HH:mm').format(_currentTime);
      });
    });
  }

  Future<String> getAddress(double lat, double lng) async {
    try {
      String address = await prayerTimeCubit.getAddressFromCoordinates(
        lat,
        lng,
      );
      return address;
    } on PlatformException catch (e) {
      if (e.code == 'IO_ERROR' && e.message == 'Service not Available') {
        /// commented out because it's so f-ing finicky
        // _log.warning(
        //     'Failed to get address: Location services are not available or disabled.');

        /// Terjadi kesalahan my a**. This is a workaround for the finicky
        return 'Terjadi Kesalahan';
      } else {
        _log.warning('Failed to get address: ${e.message}');
        return 'Gagal mendapatkan lokasi';
      }
    } catch (e) {
      _log.warning('Failed to get address: $e');
      return 'Gagal mendapatkan lokasi';
    }
  }

  @override
  void dispose() {
    _timeStream.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        if (state is LocationInitial || state is PrayerTimeLoading) {
          return _bannerLoading();
        } else if (state is LocationPermissionDenied) {
          return const SizedBox.shrink();
        } else if (state is LocationLoaded) {
          PrayerTimes prayerTime = state.prayerTime;
          getAddress(state.location.latitude, state.location.longitude)
              .then((value) => setState(() {
                    address = value;
                  }));
          return _bannerLoaded(prayerTime, address);
        } else {
          state as LocationError;
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _bannerLoaded(
    PrayerTimes prayerTime,
    String? address,
  ) {
    final time = getCurrentPrayerTimeMap(_currentTime, prayerTime);
    final currentPrayerTime = time['current'];
    final imagePath = getImagePath(currentPrayerTime);
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          reverseDuration: Duration.zero,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.primaryContainer.withOpacity(0.8),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity.w,
                height: double.infinity.h,
              ),
            ),
          ),
        ),
        Positioned(
          top: 0.05.sh,
          left: 0.015.sh,
          right: 0.015.sh,
          child: Column(
            children: [
              BannerWidget(
                currentTimeString: _currentTimeString,
                currentPrayerTime: currentPrayerTime,
                address: address!,
                textColor: getTextColor(currentPrayerTime),
              ),
              const Gap(20),
              PrayerSchedule(currentTime: _currentTimeString),
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
                currentTimeString: _currentTimeString,
                currentPrayerTime: 'Loading...',
                address: 'Loading...',
              ),
              const Gap(20),
              PrayerSchedule(currentTime: _currentTimeString),
            ],
          ),
        ),
      ],
    );
  }
}

class BuildDates extends StatelessWidget with PrayerTimeMixin {
  const BuildDates({
    super.key,
    required this.prayerTimes,
  });

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

    String formattedGregorianDate =
        dt.DateFormat('EEEE, d MMMM', 'id_ID').format(now);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formattedGregorianDate,
          style: TextStyle(
            fontSize: 16.sp,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          formattedHijriDate,
          style: TextStyle(
            fontSize: 14.sp,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class PrayerSchedule extends StatelessWidget with PrayerTimeMixin {
  const PrayerSchedule({
    super.key,
    required this.currentTime,
  });

  final String currentTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const PrayerScheduleLoading().redacted(
              context: context,
              redact: true,
            );
          },
          loading: () {
            return const PrayerScheduleLoading().redacted(
              context: context,
              redact: true,
            );
          },
          permissionDenied: () {
            return const PrayerScheduleLoading().redacted(
              context: context,
              redact: true,
            );
          },
          error: (message) {
            return const PrayerScheduleLoading().redacted(
              context: context,
              redact: true,
            );
          },
          prayerTimesLoaded: (location, prayerTime) {
            final now = DateTime.now();
            final highlightedPrayerTime = getCurrentPrayerTimeMap(
              now,
              prayerTime,
            );
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
          },
        );
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
                onTap: () => appNavigator.goToDetail(
                  context,
                  surahNumber: surah.number,
                ),
                child: CardView(surah: surah),
              );
            },
          );
        } else if (state is SurahLoading) {
          return SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 1.sw,
                  vertical: 1.sh,
                ),
                height: 75.sh,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
              ).redacted(
                context: context,
                redact: true,
              );
            },
          );
        } else {
          return const SliverFillRemaining(
            child: Center(
              child: Text('Something went wrong, try again'),
            ),
          );
        }
      },
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key, this.surah});

  final SurahEntity? surah;

  @override
  Widget build(BuildContext context) {
    String translation = surah?.name.short ?? "unknown";
    String numberOfVerses = surah?.numberOfVerses.toString() ?? "000";
    String revelationType = surah?.revelation.id ?? "unknown";
    String surahNumber = surah?.number.toArabicDigits() ?? 1.toArabicDigits();
    String name = surah?.name.transliteration.id ?? 'unknown';

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.15),
            offset: const Offset(8, 8),
            blurRadius: 14,
            spreadRadius: -8,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40.h,
            child: Center(
              child: Text(
                '﴾$surahNumber﴿',
                style: GoogleFonts.amiriQuran(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              Gap(5.h),
              Text(
                '$revelationType - $numberOfVerses ayat',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            translation,
            style: GoogleFonts.notoSansArabic(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
