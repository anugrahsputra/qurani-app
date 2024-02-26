part of 'detail_surah_page.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader({super.key, required this.surahDetail});

  final SurahDetail surahDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      decoration: BoxDecoration(
        color: Colors.deepPurple[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                surahDetail.name!.transliteration!.id ?? 'Error',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                surahDetail.name!.translation!.id ?? 'Error',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const Gap(10),
              Text(
                '${surahDetail.numberOfVerses} ayat',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                surahDetail.revelation!.id ?? 'Error',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OpeningBismillah extends StatelessWidget {
  const OpeningBismillah({super.key, required this.surahDetail});

  final SurahDetail surahDetail;

  @override
  Widget build(BuildContext context) {
    return surahDetail.preBismillah != null
        ? Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: SvgPicture.asset(
              SvgPath.bismillah,
              clipBehavior: Clip.antiAlias,
              colorFilter: const ColorFilter.mode(
                Colors.black,
                BlendMode.srcIn,
              ),
            ),
          )
        : const SizedBox();
  }
}

class Verses extends StatelessWidget {
  const Verses({
    super.key,
    required this.verses,
  });

  final List<Verse> verses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: verses.length,
      itemBuilder: (ctx, i) {
        return SurahContent(verse: verses[i]);
      },
    );
  }
}

class SurahContent extends StatelessWidget {
  const SurahContent({
    super.key,
    required this.verse,
  });

  final Verse verse;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  '${verse.number!.inSurah}.',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              verse.text!.arab ?? 'Error',
              style: GoogleFonts.amiri(
                height: 2.5,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.start,
            ),
          ),
          const Gap(10),
          Text(
            verse.translation!.id ?? 'Error',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
