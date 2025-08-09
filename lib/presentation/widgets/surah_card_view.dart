import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../features/surah/surah.dart';

class SurahCardView extends StatelessWidget {
  const SurahCardView({super.key, this.surah});

  final SurahEntity? surah;

  @override
  Widget build(BuildContext context) {
    String translation = surah?.name.short ?? "unknown";
    String numberOfVerses = surah?.numberOfVerses.toString() ?? "000";
    String revelationType = surah?.revelation.id ?? "unknown";
    String surahNumber = surah?.number.toArabicDigits() ?? 1.toArabicDigits();
    String name = surah?.name.transliteration.id ?? 'unknown';

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
          ),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              ),
              Gap(5.h),
              Text(
                '$revelationType - $numberOfVerses ayat',
                style: TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
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
