import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../features/surah/surah.dart';
import '../../../injection.dart';
import '../../presentation.dart';

part 'search_page.component.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final SurahBloc surahBloc = sl<SurahBloc>();
  final AppNavigator appNavigator = sl<AppNavigator>();

  @override
  void initState() {
    surahBloc.add(const OnGetSurah());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => surahBloc,
      child: AppScaffold(
        appBar: AppBar(
          title: Text('Cari Surah', style: GoogleFonts.poppins()),
        ),
        body: Column(
          children: [
            SearchTextField(surahBloc: surahBloc),
            SearchList(appNavigator: appNavigator),
          ],
        ),
      ),
    );
  }
}
