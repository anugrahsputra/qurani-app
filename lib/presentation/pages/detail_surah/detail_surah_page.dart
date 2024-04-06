import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qurani/features/bookmark/logics/blocs/blocs.dart';
import 'package:qurani/features/bookmark/logics/blocs/bookmark/bookmark_bloc.dart';
import 'package:qurani/features/bookmark/logics/logics.dart';

import '../../../../core/core.dart';
import '../../../../injection.dart';
import '../../../features/ayah/ayah.dart';
import '../../../features/bookmark/bookmark.dart';
import '../../../features/detail_surah/detail_surah.dart';
import '../../presentation.dart';

part 'detail_surah_page.component.dart';

class DetailSurahPage extends StatefulWidget {
  const DetailSurahPage({super.key, required this.surahNumber});

  final int surahNumber;

  @override
  State<DetailSurahPage> createState() => _DetailSurahPageState();
}

class _DetailSurahPageState extends State<DetailSurahPage> {
  final DetailSurahBloc detailSurahBloc = sl<DetailSurahBloc>();
  final VerseAudioCubit verseAudioCubit = sl<VerseAudioCubit>();
  final GetAyahUsecase getAyah = sl<GetAyahUsecase>();
  int get surahNumber => widget.surahNumber;

  @override
  void initState() {
    getAyah.call(surahNumber, 3);
    detailSurahBloc.add(OnGetDetail(surahNumber));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    verseAudioCubit.resetVerse();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => detailSurahBloc,
        ),
        BlocProvider(
          lazy: false,
          create: (context) => verseAudioCubit,
        ),
        BlocProvider(
          create: (context) => sl<BookmarkBloc>(),
        )
      ],
      child: AppScaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: const DetailTitle(),
        ),
        body: BlocConsumer<DetailSurahBloc, DetailSurahState>(
          listener: (context, state) {
            if (state is DetailSurahError) {
              AppSnackbar.showError(context, state.message);
            }
          },
          builder: (context, state) {
            if (state is DetailSurahLoaded) {
              SurahDetail surahDetail = state.detailSurah;
              List<Verse> verses = surahDetail.verses!;
              String playSurah =
                  'Memutar Surat ${surahDetail.name!.transliteration!.id!}';

              final isPlayedAll =
                  context.select<VerseAudioCubit, bool>((cubit) {
                final result = cubit.state;
                return result is VersePlayingAll ? false : true;
              });
              final audioPosition =
                  context.select<VerseAudioCubit, Duration>((cubit) {
                final result = cubit.state;
                if (result is VersePlayingAll) {
                  return result.position ?? Duration.zero;
                }
                return Duration.zero;
              });
              return Stack(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        DetailHeader(
                          surahDetail: surahDetail,
                          verseAudioCubit: verseAudioCubit,
                        ),
                        OpeningBismillah(surahDetail: surahDetail),
                        Verses(verses: verses, surah: surahDetail),
                        const Gap(20),
                      ],
                    ),
                  ),
                  FloatingBottomBar(
                    duration: const Duration(milliseconds: 700),
                    isFloating: isPlayedAll,
                    children: [
                      Text(
                        playSurah,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        _formatDuration(audioPosition),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else if (state is DetailSurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
          },
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
