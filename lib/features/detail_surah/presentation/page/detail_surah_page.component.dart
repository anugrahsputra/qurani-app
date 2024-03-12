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

class SurahContent extends StatefulWidget {
  const SurahContent({
    super.key,
    required this.verse,
  });

  final Verse verse;

  @override
  State<SurahContent> createState() => _SurahContentState();
}

class _SurahContentState extends State<SurahContent> {
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
                  '${widget.verse.number!.inSurah}.',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                PlayButton(
                  verseNumber: widget.verse.number!.inQuran.toString(),
                  audioSource: widget.verse.audio!.primary!,
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
              widget.verse.text!.arab ?? 'Error',
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
            widget.verse.translation!.id ?? 'Error',
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

class PlayButton extends StatefulWidget {
  const PlayButton({
    super.key,
    required this.verseNumber,
    required this.audioSource,
  });

  final String verseNumber;
  final String audioSource;

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  final cubit = sl<VerseAudioCubit>();
  @override
  void initState() {
    cubit.audioPlayerManager.verseAudio(widget.verseNumber);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<VerseAudioCubit>();
    return BlocBuilder<VerseAudioCubit, VerseAudioState>(
      builder: (context, state) {
        if (state is VersePlaying && state.verseNumber == widget.verseNumber) {
          return IconButton(
            onPressed: () {
              cubit.stopVerse();
            },
            icon: const Icon(
              Icons.stop,
              color: Colors.black,
              size: 25,
            ),
          );
        } else {
          return IconButton(
            onPressed: () {
              cubit.playVerse(widget.verseNumber, widget.audioSource);
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 25,
            ),
          );
        }
      },
    );
  }
}

class PlayAllButton extends StatelessWidget {
  const PlayAllButton({
    super.key,
    required this.verseAudioCubit,
    required this.surahNumber,
  });

  final VerseAudioCubit verseAudioCubit;
  final int surahNumber;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerseAudioCubit, VerseAudioState>(
      builder: (context, state) {
        if (state is VersePlayingAll) {
          return IconButton(
            onPressed: () {
              verseAudioCubit.stopVerse();
            },
            icon: const Icon(Icons.stop),
          );
        } else if (state is VerseStopped) {
          return IconButton(
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: const Icon(Icons.play_arrow),
          );
        } else {
          return IconButton(
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: const Icon(Icons.play_arrow),
          );
        }
      },
    );
  }
}

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailSurahBloc, DetailSurahState>(
      builder: (context, state) {
        if (state is DetailSurahLoaded) {
          SurahDetail surahDetail = state.detailSurah;
          return Row(
            children: [
              Text(
                '${surahDetail.number}. ',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                surahDetail.name!.transliteration!.id ?? 'Error',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        } else {
          return const Text('Detail Surah');
        }
      },
    );
  }
}
