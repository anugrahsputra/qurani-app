import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core.dart';
import '../../../../injection.dart';
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
  final AppNavigator appNavigator = sl<AppNavigator>();
  int get surahNumber => widget.surahNumber;

  @override
  void initState() {
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
          backgroundColor: AppColors.primaryContainer,
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
              String playSurah = surahDetail.name!.transliteration!.id!;
              String totalVerse = '${surahDetail.numberOfVerses} ayat';

              final isPlayedAll =
                  context.select<VerseAudioCubit, bool>((cubit) {
                final result = cubit.state;
                return result is VersePlayingAll ? false : true;
              });
              return Stack(
                children: [
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Gap(10.h),
                        DetailHeader(
                          surahDetail: surahDetail,
                          verseAudioCubit: verseAudioCubit,
                        ),
                        OpeningBismillah(surahDetail: surahDetail),
                        Verses(
                          verses: verses,
                          surah: surahDetail,
                          appNavigator: appNavigator,
                        ),
                        const Gap(20),
                      ],
                    ),
                  ),
                  AudioTime(
                    isPlayedAll: isPlayedAll,
                    playSurah: playSurah,
                    totalVerse: totalVerse,
                  ),
                ],
              );
            } else if (state is DetailSurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailSurahError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return const Center(
                child: Text("unknown error"),
              );
            }
          },
        ),
      ),
    );
  }
}

class AudioTime extends StatefulWidget {
  const AudioTime({
    super.key,
    required this.isPlayedAll,
    required this.playSurah,
    required this.totalVerse,
  });

  final bool isPlayedAll;
  final String playSurah;
  final String totalVerse;

  @override
  State<AudioTime> createState() => _AudioTimeState();
}

class _AudioTimeState extends State<AudioTime> {
  Duration _position = Duration.zero;
  // ignore: unused_field
  Duration _duration = Duration.zero;

  StreamSubscription? _positionSubscription;
  StreamSubscription? _durationSubscription;

  @override
  void initState() {
    super.initState();
    final verseAudioCubit = context.read<VerseAudioCubit>();
    _durationSubscription =
        verseAudioCubit.player?.onDurationChanged.listen((newDuration) {
      if (mounted) {
        setState(() {
          _duration = newDuration;
        });
      }
    });
    _positionSubscription =
        verseAudioCubit.player?.onPositionChanged.listen((newPosition) {
      if (mounted) {
        setState(() {
          _position = newPosition;
        });
      }
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _positionSubscription?.cancel();
    _durationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingBottomBar(
      duration: const Duration(milliseconds: 700),
      isFloating: widget.isPlayedAll,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.playSurah,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              widget.totalVerse,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        Text(
          _formatDuration(_position),
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
