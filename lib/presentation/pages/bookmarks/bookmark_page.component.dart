part of 'bookmarks_page.dart';

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({
    super.key,
    required this.bookmark,
    required this.appNavigator,
  });

  final Bookmark bookmark;
  final AppNavigator appNavigator;

  @override
  Widget build(BuildContext context) {
    String title = 'Surat ${bookmark.surahName}, ayat ${bookmark.inSurah}';

    return InkWell(
      onTap: () {
        appNavigator.goToAyah(
          context,
          surahNumber: bookmark.surahNumber!,
          ayahNumber: bookmark.inSurah!,
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.onPrimary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withValues(alpha: 0.15),
              offset: const Offset(8, 8),
              blurRadius: 14,
              spreadRadius: -8,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.primaryContainer,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      // TODO: go to surah
                    },
                    child: const Icon(Icons.chevron_right_rounded, size: 18),
                  ),
                ],
              ),
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  bookmark.textArab!,
                  style: GoogleFonts.amiri(
                    height: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  bookmark.textTransliteration!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Gap(5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  bookmark.textTranslate!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
