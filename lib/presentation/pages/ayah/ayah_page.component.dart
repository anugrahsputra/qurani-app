part of 'ayah_page.dart';

class AyahView extends StatelessWidget {
  const AyahView({
    super.key,
    required this.ayah,
  });

  final Ayah ayah;

  @override
  Widget build(BuildContext context) {
    String ayahSource =
        '${ayah.surah.name.transliteration.id} ${ayah.surah.number}: ${ayah.number.inSurah}';

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
      child: Column(
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
    );
  }
}

class TafsirView extends StatelessWidget {
  const TafsirView({
    super.key,
    required this.ayah,
  });

  final Ayah ayah;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Tafsir ayat ke ${ayah.number.inSurah}',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
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
