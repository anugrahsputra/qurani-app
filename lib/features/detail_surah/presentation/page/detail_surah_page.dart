import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

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
          title: const Text('Surah Detail'),
        ),
        body: BlocBuilder<DetailSurahBloc, DetailSurahState>(
          builder: (context, state) {
            if (state is DetailSurahLoaded) {
              SurahDetail surahDetail = state.detailSurah;
              return ListView(
                children: [
                  Text(surahDetail.number.toString()),
                  Text(surahDetail.name!.translation!.en ?? ''),
                  Text(surahDetail.name!.transliteration!.en ?? ''),
                ],
              );
            } else if (state is DetailSurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is DetailSurahError) {
              return const Center(
                child: Text('Error'),
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
