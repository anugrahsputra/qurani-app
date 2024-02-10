import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection.dart';
import '../../logic/logic.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<SurahBloc>()..add(const OnGetSurah()),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Qurani'),
          ),
          body: BlocBuilder<SurahBloc, SurahState>(
            builder: (context, state) {
              return state.map(
                initial: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loading: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loaded: (state) => ListView.builder(
                  itemCount: state.listSurah.length,
                  itemBuilder: (context, index) {
                    final surah = state.listSurah[index];
                    return ListTile(
                      title: Text(surah.name.translation.id),
                      subtitle: Text(surah.name.long),
                    );
                  },
                ),
                error: (state) => Center(child: Text(state.message)),
              );
            },
          ),
        ));
  }
}
