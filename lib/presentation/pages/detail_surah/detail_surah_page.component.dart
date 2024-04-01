part of 'detail_surah_page.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader(
      {super.key, required this.surahDetail, required this.verseAudioCubit});

  final SurahDetail surahDetail;
  final VerseAudioCubit verseAudioCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
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
          const Spacer(),
          Container(
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(PngPath.ornaments),
                fit: BoxFit.cover,
              ),
            ),
            child: PlayAllButton(
              verseAudioCubit: verseAudioCubit,
              surahNumber: surahDetail.number ?? 0,
            ),
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
        : const SizedBox.shrink();
  }
}

class Verses extends StatelessWidget {
  const Verses({
    super.key,
    required this.verses,
    required this.surah,
  });

  final List<Verse> verses;
  final SurahDetail surah;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: verses.length,
      itemBuilder: (ctx, i) {
        return SurahContent(
          id: verses[i].number!.inQuran!,
          verse: verses[i],
          surah: surah,
        );
      },
    );
  }
}

class SurahContent extends StatefulWidget {
  const SurahContent({
    super.key,
    required this.verse,
    required this.surah,
    required this.id,
  });

  final int id;
  final Verse verse;
  final SurahDetail surah;

  @override
  State<SurahContent> createState() => _SurahContentState();
}

class _SurahContentState extends State<SurahContent> {
  bool isBookmark = false;

  @override
  void initState() {
    context.read<BookmarkBloc>().add(OnBookmarkStatus(widget.id));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String surahName = widget.surah.name!.transliteration!.id!;
    String numberInSurah = '${widget.verse.number!.inSurah?.toArabicDigits()}';
    String verseText = widget.verse.text!.arab ?? 'Error';
    String translation = widget.verse.translation!.id ?? 'Error';
    String transliteration = widget.verse.text!.transliteration!.en ?? 'Error';
    String ayah = '$verseText ﴿$numberInSurah﴾';

    final isBookmarked = context.select<BookmarkBloc, bool>((bloc) {
      final result = bloc.state;
      return result is BookmarkCheck ? result.isBookmarked : false;
    });
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
            decoration: BoxDecoration(
              // color: Colors.deepPurple[100],
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
                const Gap(15),
                Expanded(
                  child: AudioSlider(
                    verseNumber: widget.verse.number!.inSurah.toString(),
                    audioSource: widget.verse.audio!.primary!,
                  ),
                ),
                PlayButton(
                  verseNumber: widget.verse.number!.inSurah.toString(),
                  audioSource: widget.verse.audio!.primary!,
                ),
                InkWell(
                  onTap: () async {
                    if (!isBookmarked) {
                      context
                          .read<BookmarkBloc>()
                          .add(OnAddBookmark(widget.verse, surahName));
                    } else {
                      context
                          .read<BookmarkBloc>()
                          .add(OnRemoveBookmark(widget.verse, surahName));
                    }

                    String message = !isBookmarked
                        ? 'surat $surahName ayat $numberInSurah berhasil ditambahkan'
                        : 'surat $surahName ayat $numberInSurah berhasil dihapus';

                    final state = BlocProvider.of<BookmarkBloc>(context).state;

                    if (state is BookmarkMessage || state is BookmarkCheck) {
                      AppSnackbar.showSuccess(context, message);
                      BlocProvider.of<BookmarkBloc>(context)
                          .add(OnBookmarkStatus(widget.verse.number!.inQuran!));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              content: Text('Failed'),
                            );
                          });
                    }
                  },
                  child: const Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                    size: 20,
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    ayah,
                    style: GoogleFonts.amiri(
                      height: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          Text(
            transliteration,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          const Gap(5),
          Text(
            translation,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
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
  @override
  void initState() {
    context
        .read<VerseAudioCubit>()
        .audioPlayerManager
        .verseAudio(widget.verseNumber);
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
        } else if (state is VerseLoading) {
          return const Icon(
            Icons.circle,
            color: Colors.black,
            size: 25,
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
            icon: const Icon(Icons.stop_circle_rounded, size: 50),
          );
        } else if (state is VerseStopped) {
          return IconButton(
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: const Icon(Icons.play_circle_rounded, size: 50),
          );
        } else {
          return IconButton(
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: const Icon(Icons.play_circle_rounded, size: 50),
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

class AudioSlider extends StatefulWidget {
  final String verseNumber;
  final String audioSource;

  const AudioSlider(
      {super.key, required this.verseNumber, required this.audioSource});

  @override
  State<AudioSlider> createState() => _AudioSliderState();
}

class _AudioSliderState extends State<AudioSlider> {
  final cubit = sl<VerseAudioCubit>();

  @override
  void initState() {
    cubit.audioPlayerManager.verseAudio(widget.verseNumber);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerseAudioCubit, VerseAudioState>(
      builder: (context, state) {
        if (state is VersePlaying && state.verseNumber == widget.verseNumber) {
          final position = state.position ?? Duration.zero;
          final duration = state.duration ?? Duration.zero;
          double? value = duration.inMilliseconds > 0
              ? position.inMicroseconds / duration.inMicroseconds
              : 0;
          return Container(
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: AppColors.primaryContainer,
            ),
            child: LinearProgressIndicator(
              value: value,
              color: AppColors.primary,
              backgroundColor: AppColors.primaryContainer,
              borderRadius: BorderRadius.circular(2.5),
            ),
          );
        } else if (state is VerseLoading &&
            state.verseNumber == widget.verseNumber) {
          return Container(
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: AppColors.primaryContainer,
            ),
          );
        } else {
          return Container(
            height: 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5),
              color: AppColors.primaryContainer,
            ),
          );
        }
      },
    );
  }
}
