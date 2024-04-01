part of 'homepage.dart';

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
        const Gap(25),
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
          maxLines: 2,
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

class PrayerScheduleWidget extends StatelessWidget {
  const PrayerScheduleWidget({
    super.key,
    required this.text,
    required this.prayerTimes,
    required this.highlightedPrayerTime,
    this.color,
    required this.prayerTimeIcon,
  });

  final String? text;
  final Color? color;
  final Map<String, dynamic>? prayerTimes;
  final Map<String, dynamic>? highlightedPrayerTime;
  final Map<String, dynamic>? prayerTimeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text ?? '',
          style: TextStyle(
            fontSize: 14,
            color: color ?? AppColors.onBackground,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: prayerTimes?.entries.map((e) {
                final isHighlighted =
                    e.key == highlightedPrayerTime?['current'];
                final textColor = isHighlighted
                    ? AppColors.primaryContainer
                    : AppColors.onPrimary;
                final iconColor = isHighlighted
                    ? AppColors.primaryContainer
                    : AppColors.onPrimary;

                return Container(
                  width: 60,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        e.key,
                        style: TextStyle(
                          color: textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SvgPicture.asset(
                        prayerTimeIcon?[e.key] ?? SvgPath.fajr,
                        colorFilter:
                            ColorFilter.mode(iconColor, BlendMode.srcIn),
                      ),
                      Text(
                        dt.DateFormat('HH:mm').format(e.value),
                        style: TextStyle(
                          color: textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList() ??
              [],
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
