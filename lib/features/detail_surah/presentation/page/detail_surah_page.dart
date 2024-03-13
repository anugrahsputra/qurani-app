import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core.dart';
import '../../../../injection.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

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
      ],
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: const DetailTitle(),
        ),
        body: BlocBuilder<DetailSurahBloc, DetailSurahState>(
          builder: (context, state) {
            if (state is DetailSurahLoaded) {
              SurahDetail surahDetail = state.detailSurah;
              List<Verse> verses = surahDetail.verses!;
              return SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    DetailHeader(
                      surahDetail: surahDetail,
                      verseAudioCubit: verseAudioCubit,
                    ),
                    OpeningBismillah(surahDetail: surahDetail),
                    Verses(verses: verses),
                    const Gap(20),
                  ],
                ),
              );
            } else if (state is DetailSurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return const Center(
                child: Text('bruh'),
              );
            }
          },
        ),
      ),
    );
  }
}
