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
      height: 138.h,
      margin: EdgeInsets.symmetric(
        horizontal: 5.w,
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
      margin: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 5.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              children: [
                Text(
                  '${widget.verse.number!.inSurah}.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.r,
                    color: Colors.black,
                  ),
                ),
                Gap(15.w),
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
                  child: Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                    size: 20.dm,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: Colors.black,
                    size: 20.dm,
                  ),
                ),
              ],
            ),
          ),
          Gap(10.h),
          Container(
            width: double.infinity.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                      fontSize: 24.sp,
                      color: Colors.black,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          Gap(10.h),
          Text(
            transliteration,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
          Gap(5.h),
          Text(
            translation,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
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
            icon: Icon(
              Icons.stop,
              color: Colors.black,
              size: 25.dm,
            ),
          );
        } else if (state is VerseLoading) {
          return Icon(
            Icons.circle,
            color: Colors.black,
            size: 25.dm,
          );
        } else {
          return IconButton(
            onPressed: () {
              cubit.playVerse(widget.verseNumber, widget.audioSource);
            },
            icon: Icon(
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
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: Icon(Icons.play_circle_rounded, size: 50.dm),
          );
        } else {
          return IconButton(
            onPressed: () {
              verseAudioCubit.playAllVerse(surahNumber);
            },
            icon: Icon(Icons.play_circle_rounded, size: 50.dm),
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
