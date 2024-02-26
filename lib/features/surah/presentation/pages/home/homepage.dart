import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/core.dart';
import '../../../../../injection.dart';
import '../../../domain/domain.dart';
import '../../logic/logic.dart';

part 'homepage.component.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final SurahBloc surahBloc = sl<SurahBloc>();

  @override
  void initState() {
    super.initState();
    surahBloc.add(const OnGetSurah());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => surahBloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Qurani'),
        ),
        body: Column(
          children: [
            SurahCards(),
          ],
        ),
      ),
    );
  }
}
