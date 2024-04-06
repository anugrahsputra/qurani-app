import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/ayah/ayah.dart';
import '../../../injection.dart';
import '../../presentation.dart';

class AyahPage extends StatefulWidget {
  const AyahPage({
    super.key,
    required this.ayahNumber,
    required this.surahNumber,
  });

  final int surahNumber;
  final int ayahNumber;

  @override
  State<AyahPage> createState() => _AyahPageState();
}

class _AyahPageState extends State<AyahPage> {
  final AyahsBloc ayahsBloc = sl<AyahsBloc>();

  int get surahNumber => widget.surahNumber;
  int get ayahNumber => widget.ayahNumber;

  @override
  void initState() {
    ayahsBloc.add(OnGetAyah(surahNumber, ayahNumber));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ayahsBloc,
      child: AppScaffold(
        appBar: AppBar(
          title: const Text('Ayah'),
        ),
        body: BlocBuilder<AyahsBloc, AyahsState>(
          builder: (context, state) {
            if ((state is AyahInitial) || (state is AyahLoading)) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is AyahLoaded) {
              final Ayah ayah = state.ayah;
              return Center(
                child: Text(ayah.surah!.name!.short!),
              );
            } else if (state is AyahError) {
              return Center(child: Text(state.message));
            }
            return const Center(child: Text('something is wrong 2'));
          },
        ),
      ),
    );
  }
}
