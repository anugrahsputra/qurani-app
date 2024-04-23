part of 'detail_surah_page.dart';

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
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                ),
              ),
              Text(
                surahDetail.name!.transliteration!.id ?? 'Error',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
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

class DetailHeader extends StatelessWidget {
  const DetailHeader(
      {super.key, required this.surahDetail, required this.verseAudioCubit});

  final SurahDetail surahDetail;
  final VerseAudioCubit verseAudioCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 5.h,
      ),
      padding: EdgeInsets.fromLTRB(15.w, 15.h, 0.w, 15.h),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10.r),
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
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                surahDetail.name!.translation!.id ?? 'Error',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Gap(10.h),
              Text(
                '${surahDetail.numberOfVerses} ayat',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                surahDetail.revelation!.id ?? 'Error',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 120.w,
            height: 120.h,
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
            width: double.infinity.w,
            margin: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 5.h,
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
    required this.appNavigator,
  });

  final List<Verse> verses;
  final SurahDetail surah;
  final AppNavigator appNavigator;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: verses.length,
      itemBuilder: (ctx, i) {
        Verse verse = verses[i];
        return VerseView(
          verse: verse,
          surahNumber: surah.number!,
          numberInQuran: verse.number!.inQuran!,
          numberInSurah: verse.number!.inSurah!,
          surahName: surah.name!.transliteration!.id!,
          verseText: verse.text!.arab!,
          translation: verse.translation!.id!,
          transliteration: verse.text!.transliteration!.en!,
          goToAyahPage: () => appNavigator.goToAyah(context,
              surahNumber: surah.number!, ayahNumber: verse.number!.inSurah!),
        );
      },
    );
  }
}

class VerseView extends StatefulWidget {
  const VerseView({
    super.key,
    required this.numberInQuran,
    required this.numberInSurah,
    required this.surahNumber,
    required this.surahName,
    required this.verseText,
    required this.translation,
    required this.transliteration,
    required this.goToAyahPage,
    required this.verse,
  });

  final int numberInQuran;
  final int numberInSurah;
  final int surahNumber;
  final String surahName;
  final String verseText;
  final String translation;
  final String transliteration;
  final Verse verse;
  final void Function()? goToAyahPage;

  @override
  State<VerseView> createState() => _VerseViewState();
}

class _VerseViewState extends State<VerseView> {
  int get key => widget.numberInQuran;

  @override
  void initState() {
    context.read<BookmarkBloc>().add(OnBookmarkStatus(key));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isBookmarked = context.select<BookmarkBloc, bool>((bloc) {
      final result = bloc.state;
      return result is BookmarkCheck ? result.isBookmarked : false;
    });
    return Container(
      key: Key(key.toString()),
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.onPrimary,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.15),
            offset: const Offset(8, 8),
            blurRadius: 14,
            spreadRadius: -8,
          )
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
              children: [
                Text(
                  '${widget.numberInSurah}.',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                PlayButton(
                  verseNumber: widget.numberInSurah.toString(),
                  audioSource: widget.verse.audio!.primary!,
                ),
                Gap(10.w),
                InkWell(
                  onTap: () {
                    if (!isBookmarked) {
                      context.read<BookmarkBloc>().add(OnAddBookmark(
                            widget.verse,
                            widget.surahName,
                            widget.surahNumber,
                          ));
                    } else {
                      context.read<BookmarkBloc>().add(OnRemoveBookmark(
                            widget.verse,
                            widget.surahName,
                            widget.surahNumber,
                          ));
                    }

                    String message = !isBookmarked
                        ? 'surat ${widget.surahName} ayat ${widget.numberInSurah} berhasil ditambahkan'
                        : 'surat ${widget.surahName} ayat ${widget.numberInSurah} berhasil dihapus';

                    final state = BlocProvider.of<BookmarkBloc>(context).state;

                    if (state is BookmarkMessage || state is BookmarkCheck) {
                      AppSnackbar.showSuccess(context, message);
                      BlocProvider.of<BookmarkBloc>(context)
                          .add(OnBookmarkStatus(key));
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
                    Icons.bookmark_border_rounded,
                    size: 18,
                  ),
                ),
                Gap(10.w),
                InkWell(
                  onTap: widget.goToAyahPage,
                  child: const Icon(
                    Icons.chevron_right_rounded,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Gap(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${widget.verseText} ﴿${widget.numberInSurah.toArabicDigits()}﴾',
                style: GoogleFonts.amiri(
                  height: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.sp,
                  color: Colors.black,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Gap(10.w),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.transliteration,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Gap(5.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.translation,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Gap(10),
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
          return InkWell(
            onTap: () {
              cubit.stopVerse();
            },
            child: Icon(
              Icons.stop,
              color: Colors.black,
              size: 25.dm,
            ),
          );
        } else {
          return InkWell(
            onTap: () {
              cubit.playVerse(widget.verseNumber, widget.audioSource);
            },
            child: Icon(
              Icons.play_arrow,
              color: Colors.black,
              size: 25.dm,
            ),
          );
        }
      },
    );
  }
}

class SurahPlayer extends StatefulWidget {
  const SurahPlayer({super.key});

  @override
  State<SurahPlayer> createState() => _SurahPlayerState();
}

class _SurahPlayerState extends State<SurahPlayer> {
  bool isLoading = false;
  late AudioPlayer? _player;
  PlayerState playerState = PlayerState.stopped;

  void _surahAudio() async {
    setState(() => isLoading = false);
    if (playerState == PlayerState.playing) {
      await _player?.stop();
    } else {
      await _player?.stop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
            icon: Icon(Icons.stop_circle_rounded, size: 50.dm),
          );
        } else if (state is VerseStopped) {
          return IconButton(
            onPressed: () async {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: Icon(Icons.play_circle_rounded, size: 50.dm),
          );
        } else {
          return IconButton(
            onPressed: () async {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: Icon(Icons.play_circle_rounded, size: 50.dm),
          );
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
            height: 2.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5.r),
              color: AppColors.primaryContainer,
            ),
            child: LinearProgressIndicator(
              value: value,
              color: AppColors.primary,
              backgroundColor: AppColors.primaryContainer,
              borderRadius: BorderRadius.circular(2.5.r),
            ),
          );
        } else if (state is VerseLoading &&
            state.verseNumber == widget.verseNumber) {
          return Container(
            height: 2.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5.r),
              color: AppColors.primaryContainer,
            ),
          );
        } else {
          return Container(
            height: 2.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.5.r),
              color: AppColors.primaryContainer,
            ),
          );
        }
      },
    );
  }
}
