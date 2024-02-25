part of 'homepage.dart';

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
            child: Text('bruh'),
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
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.deepPurple,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                surah.number.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
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
