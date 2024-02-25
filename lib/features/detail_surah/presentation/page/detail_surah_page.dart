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
  int get surahNumber => widget.surahNumber;

  @override
  void initState() {
    detailSurahBloc.add(OnGetDetail(surahNumber));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => detailSurahBloc,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: BlocBuilder<DetailSurahBloc, DetailSurahState>(
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
          ),
        ),
        body: BlocBuilder<DetailSurahBloc, DetailSurahState>(
          builder: (context, state) {
            if (state is DetailSurahLoaded) {
              SurahDetail surahDetail = state.detailSurah;
              List<Verse> verses = surahDetail.verses!;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    DetailHeader(surahDetail: surahDetail),
                    OpeningBismillah(surahDetail: surahDetail),
                    Verses(verses: verses),
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
