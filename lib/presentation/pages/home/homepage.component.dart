part of 'homepage.dart';

class BannerContainer extends StatefulWidget {
  const BannerContainer({
    super.key,
  });

  @override
  State<BannerContainer> createState() => _BannerContainerState();
}

class _BannerContainerState extends State<BannerContainer> {
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
    final currentTime = DateTime.now();
    final currentTimeString = dt.DateFormat('HH:mm').format(currentTime);
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BuildDates(),
              const Gap(20),
              Text(
                currentTimeString,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const BuildClock()
            ],
          ),
        ),
      ],
    );
  }
}

class BuildAyahOTD extends StatelessWidget {
  const BuildAyahOTD({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AyahsBloc, AyahsState>(
      builder: (context, state) {
        if (state is AyahLoaded) {
          final Ayah ayah = state.ayah;
          return Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Ayat of the Day',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Gap(20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  ayah.text.arab,
                  style: GoogleFonts.amiri(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
              ),
              const Gap(10),
              Text(
                ayah.translation.id,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        } else if (state is AyahLoading) {
          return const Column(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: LinearProgressIndicator()),
              Gap(20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Gap(10),
              Text(
                'Loading...',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        } else {
          return const Text('Something went wrong, try again');
        }
      },
    );
  }
}

class BuildClock extends StatelessWidget {
  const BuildClock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const PrayerWidget(text: 'Loading...');
          },
          permissionGranted: () {
            return const PrayerWidget(text: 'Mencari Lokasi Anda...');
          },
          permissionDenied: () {
            return const PrayerWidget(text: 'Izin lokasi ditolak');
          },
          locationLoaded: (location, prayerTime) {
            final now = tz.TZDateTime.now(tz.local);
            final prayerTimes = getCurrentPrayerTimeMap(
              now,
              prayerTime,
            );

            final nextPrayerTime = prayerTime.timeForPrayer(
              prayerTime.nextPrayer(),
            );

            final formatTime = dt.DateFormat('HH:mm').format(nextPrayerTime!);

            String text = '${prayerTimes['next']} $formatTime';
            return PrayerWidget(text: text);
          },
        );
      },
    );
  }
}

class BuildLocation extends StatefulWidget {
  const BuildLocation({
    super.key,
  });

  @override
  State<BuildLocation> createState() => _BuildLocationState();
}

class _BuildLocationState extends State<BuildLocation> {
  final PrayerTimeCubit prayerTimeCubit = sl<PrayerTimeCubit>();
  String address = '';

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
    return BlocBuilder<PrayerTimeCubit, PrayerTimeState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return const CurrentLocWidget(currentLoc: '...');
          },
          permissionGranted: () {
            return const CurrentLocWidget(currentLoc: 'Mencari Lokasi Anda...');
          },
          permissionDenied: () {
            return const CurrentLocWidget(currentLoc: 'Izin lokasi ditolak');
          },
          locationLoaded: (location, prayerTime) {
            getAddress(location.latitude!, location.longitude!).then((value) {
              setState(() {
                address = value;
              });
            });
            return CurrentLocWidget(currentLoc: address);
          },
        );
      },
    );
  }
}

class CurrentLocWidget extends StatelessWidget {
  const CurrentLocWidget({
    super.key,
    this.currentLoc,
  });
  final String? currentLoc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          size: 20,
        ),
        const Gap(5),
        Text(
          currentLoc!,
          style: GoogleFonts.poppins(
            fontSize: 16,
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
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BuildDates extends StatelessWidget {
  const BuildDates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final location = tz.getLocation('Asia/Jakarta');
    final now = tz.TZDateTime.now(location);

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
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          formattedHijriDate,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
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
