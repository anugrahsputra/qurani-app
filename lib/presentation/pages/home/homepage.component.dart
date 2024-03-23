part of 'homepage.dart';

class Banner extends StatefulWidget {
  const Banner({super.key});

  @override
  State<Banner> createState() => _BannerState();
}

class _BannerState extends State<Banner> with PrayerTimeMixin {
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
      log(e.toString());
      return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    var currentTime = DateTime.now();
    String currentTimeString = dt.DateFormat('HH:mm').format(currentTime);

    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            context.read<PrayerTimeCubit>().getLocation();
            return const SizedBox();
          },
          permissionGranted: () {
            context.read<PrayerTimeCubit>().getLocation();
            return const SizedBox();
          },
          permissionDenied: () => const SizedBox(),
          locationLoaded: (location, prayerTime) {
            final time = getCurrentPrayerTimeMap(currentTime, prayerTime);
            final currentPrayerTime = time['current'];
            final imagePath = getImagePath(currentPrayerTime);
            getAddress(location.latitude!, location.longitude!).then((value) {
              setState(() {
                address = value;
              });
            });

            return Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: getTextColor(currentPrayerTime),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        currentPrayerTime,
                        style: TextStyle(
                          color: getTextColor(currentPrayerTime),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Placeholder();
          },
          permissionGranted: () {
            return const Placeholder();
          },
          permissionDenied: () {
            return const Placeholder();
          },
          locationLoaded: (location, prayerTime) {
            final now = DateTime.now();
            final highlightedPrayerTime = getCurrentPrayerTimeMap(
              now,
              prayerTime,
            );
            final next = highlightedPrayerTime['next'];
            final timeRemaining = highlightedPrayerTime['remainingTime'];
            final prayerTimes = getPrayerSchedule(prayerTime);

            return Column(
              children: [
                Text(
                  'Shalat $next ${formatDuration(timeRemaining)}',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: prayerTimes.entries
                      .map(
                        (e) => Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: e.key == highlightedPrayerTime['next']
                                ? AppColors.primaryContainer
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Text(
                                e.key,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                dt.DateFormat('HH:mm').format(e.value),
                                style: const TextStyle(
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
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
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
            ),
          );
        } else if (state is SurahLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text('Something went wrong, try again'),
          );
        }
      },
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key, required this.surah});

  final SurahEntity surah;

  @override
  Widget build(BuildContext context) {
    String translation = surah.name.short;
    String numberOfVerses = surah.numberOfVerses.toString();
    String revelationType = surah.revelation.id;
    String surahNumber = surah.number.toArabicDigits();

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
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
                surah.name.transliteration.id,
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
