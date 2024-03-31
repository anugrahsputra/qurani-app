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
            duration: const Duration(milliseconds: 300),
            switchInCurve: Curves.easeIn,
            reverseDuration: Duration.zero,
            child: state.displayAppbar
                ? Text(
                    'Al-Qur\'an',
                    style: GoogleFonts.poppins(
                      color: AppColors.onPrimary,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                : const SizedBox.shrink(),
          ),
          toolbarHeight: 50,
          collapsedHeight: 50,
          expandedHeight: 280,
          elevation: 0,
          pinned: true,
          floating: false,
          snap: false,
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
  String address = '';
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  Future<String> getAddress(double lat, double lng) async {
    try {
      String address = await prayerTimeCubit.getAddressFromCoordinates(
        lat,
        lng,
      );
      return address;
    } catch (e) {
      return 'Mencari...';
    }
  }

  @override
  Widget build(BuildContext context) {
    var timezone = tz.getLocation('Asia/Jakarta');
    var currentTime = tz.TZDateTime.now(timezone);
    String currentTimeString = dt.DateFormat('HH:mm').format(currentTime);
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
          permissionDenied: () => const SizedBox.shrink(),
          locationLoaded: (location, prayerTime) {
            final time = getCurrentPrayerTimeMap(currentTime, prayerTime);
            final currentPrayerTime = time['current'];
            final imagePath = getImagePath(currentPrayerTime);
            getAddress(location.latitude, location.longitude).then((value) {
              setState(() {
                address = value;
              });
            });
            return Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  right: 10,
                  child: Column(
                    children: [
                      BannerWidget(
                        currentTimeString: currentTimeString,
                        currentPrayerTime: currentPrayerTime,
                        address: address,
                      ),
                      const Gap(20),
                      const PrayerSchedule(),
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    this.imagePath,
    required this.currentTimeString,
    required this.currentPrayerTime,
    required this.address,
    this.textColor,
    this.opacity,
  });

  final String? imagePath;
  final String currentTimeString;
  final String currentPrayerTime;
  final String address;
  final Color? textColor;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildDates(prayerTimes: currentPrayerTime),
            CurrentLocWidget(
              currentLoc: address,
              currentPrayer: currentPrayerTime,
            ),
          ],
        ),
        const Gap(20),
        Text(
          currentTimeString,
          style: TextStyle(
            fontSize: 40,
            color: textColor ?? AppColors.onPrimary,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          currentPrayerTime,
          style: TextStyle(
            color: textColor ?? AppColors.onPrimary,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class CurrentLocWidget extends StatelessWidget with PrayerTimeMixin {
  const CurrentLocWidget({
    super.key,
    this.currentLoc,
    this.currentPrayer,
  });
  final String? currentLoc;
  final String? currentPrayer;

  @override
  Widget build(BuildContext context) {
    var color = getTextColor(currentPrayer!);

    return Row(
      children: [
        Icon(
          Icons.location_on,
          size: 15,
          color: color,
        ),
        const Gap(5),
        Text(
          currentLoc!,
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class PrayerWidget extends StatelessWidget {
  const PrayerWidget({
    super.key,
    required this.text,
    required this.textColor,
  });

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
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
    var hijriCalendar = hijri.HijriCalendar.fromDate(now);
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
            fontSize: 16,
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          formattedHijriDate,
          style: TextStyle(
            fontSize: 14,
            color: textColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class PrayerSchedule extends StatefulWidget {
  const PrayerSchedule({super.key});

  @override
  State<PrayerSchedule> createState() => _PrayerScheduleState();
}

class _PrayerScheduleState extends State<PrayerSchedule> with PrayerTimeMixin {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var timezone = tz.getLocation('Asia/Jakarta');
    var currentTime = tz.TZDateTime.now(timezone);
    String currentTimeString = dt.DateFormat('HH:mm').format(currentTime);
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
          locationLoaded: (location, prayerTime) {
            final now = DateTime.now();
            final highlightedPrayerTime = getCurrentPrayerTimeMap(
              now,
              prayerTime,
            );
            String next = highlightedPrayerTime['next'];
            final timeRemaining = highlightedPrayerTime['remainingTime'];
            Color titleColor = getTextColor(currentTimeString);
            final prayerTimes = getPrayerSchedule(prayerTime);
            String text = 'Shalat $next ${formatDuration(timeRemaining)}';

            return PrayerScheduleWidget(
              text: text,
              color: titleColor,
              prayerTimes: prayerTimes,
              highlightedPrayerTime: highlightedPrayerTime,
            );
          },
        );
      },
    );
  }
}

class PrayerScheduleWidget extends StatelessWidget {
  const PrayerScheduleWidget({
    super.key,
    required this.text,
    required this.prayerTimes,
    required this.highlightedPrayerTime,
    this.color,
  });

  final String text;
  final Color? color;
  final Map<String, dynamic> prayerTimes;
  final Map<String, dynamic> highlightedPrayerTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: color ?? AppColors.onBackground,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: prayerTimes.entries
              .map(
                (e) => Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: e.key == highlightedPrayerTime['next']
                        ? AppColors.primaryContainer
                        : e.key == highlightedPrayerTime['current']
                            ? AppColors.primary
                            : Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: e.key == highlightedPrayerTime['next']
                            ? AppColors.shadow.withOpacity(0.15)
                            : Colors.transparent,
                        offset: const Offset(8, 8),
                        blurRadius: 14,
                        spreadRadius: -8,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        e.key,
                        style: TextStyle(
                          color: e.key == highlightedPrayerTime['next']
                              ? AppColors.onBackground
                              : AppColors.onPrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        dt.DateFormat('HH:mm').format(e.value),
                        style: TextStyle(
                          color: e.key == highlightedPrayerTime['next']
                              ? AppColors.onBackground
                              : AppColors.onPrimary,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class PrayerScheduleLoading extends StatelessWidget {
  const PrayerScheduleLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'shalat dzuhur 00 jam 00 menit',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            5,
            (index) => Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.transparent,
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
              child: const Column(
                children: [
                  Text(
                    'shalat',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '00:00',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
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
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                height: 75,
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
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
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
            height: 40,
            child: Center(
              child: Text(
                '﴾$surahNumber﴿',
                style: GoogleFonts.amiriQuran(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
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
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Gap(5),
              Text(
                '$revelationType - $numberOfVerses ayat',
              )
            ],
          ),
          const Spacer(),
          Text(
            translation,
            style: GoogleFonts.notoSansArabic(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
