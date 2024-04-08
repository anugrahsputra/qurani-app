part of 'ayah_page.dart';

class AyahView extends StatelessWidget {
  const AyahView({
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              ayah.text.arab,
              style: GoogleFonts.amiri(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
              ),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.start,
            ),
          ),
          const Gap(10),
          Text(
            ayah.text.transliteration.en,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            ayah.translation.id,
            style: TextStyle(
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
