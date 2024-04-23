part of 'ayah_page.dart';

class AyahImagePreview extends StatelessWidget {
  const AyahImagePreview({
    super.key,
    required this.ayah,
  });
  final Ayah ayah;

  @override
  Widget build(BuildContext context) {
    String ayahSource =
        '${ayah.surah.name.transliteration.id} ${ayah.surah.number}: ${ayah.number.inSurah}';

    var size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height,
      width: size.width,
      padding: EdgeInsets.symmetric(
        vertical: 30.h,
        horizontal: 20.w,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryContainer,
            AppColors.primary,
          ],
        ),
      ),
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight * 0.5,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.shadow.withOpacity(0.85),
                    offset: const Offset(4, 4),
                    blurRadius: 14,
                    spreadRadius: -8,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      ayahSource,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Gap(30.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      ayah.text.arab,
                      style: GoogleFonts.amiri(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                        color: Colors.black,
                      ),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Gap(15.h),
                  Text(
                    ayah.translation.id,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(),
                  Text(
                    'Qurani v1.0',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class AyahView extends StatelessWidget {
  const AyahView({
    super.key,
    required this.ayah,
    this.onPressed,
  });

  final Ayah ayah;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    String ayahSource =
        '${ayah.surah.name.transliteration.id} ${ayah.surah.number}: ${ayah.number.inSurah}';

    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 500),
      closedColor: AppColors.background,
      openColor: AppColors.primaryContainer,
      openElevation: 0,
      closedElevation: 0,
      openBuilder: (context, action) {
        return GestureDetector(
          onTap: () => action(),
          child: AyahImagePreview(ayah: ayah),
        );
      },
      closedBuilder: (context, action) {
        return Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.shadow.withOpacity(0.85),
                offset: const Offset(3, 4),
                blurRadius: 14,
                spreadRadius: -9,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: -15,
                right: -10,
                child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.fullscreen),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      ayahSource,
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Gap(30.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      ayah.text.arab,
                      style: GoogleFonts.amiri(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                        color: Colors.black,
                      ),
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Gap(15.h),
                  Text(
                    ayah.text.transliteration.en,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Text(
                    ayah.translation.id,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class TafsirView extends StatelessWidget {
  const TafsirView({
    super.key,
    required this.ayah,
    required this.appNavigator,
  });

  final Ayah ayah;
  final AppNavigator appNavigator;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Tafsir surah ${ayah.surah.name.transliteration.id} ayat ke ${ayah.number.inSurah}',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  appNavigator.back(context);
                },
                icon: const Icon(Icons.close_rounded),
              )
            ],
          ),
          Gap(15.h),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueGrey[50],
            ),
            child: Text(
              ayah.tafsir.id.short,
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
