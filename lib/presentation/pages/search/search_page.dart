import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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

  late FocusNode focusNode;

  @override
  void initState() {
    surahBloc.add(const OnGetSurah());
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => surahBloc,
      child: AppScaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: SearchTextField(surahBloc: surahBloc, focusNode: focusNode),
        ),
        body: SearchList(appNavigator: appNavigator),
      ),
    );
  }
}
