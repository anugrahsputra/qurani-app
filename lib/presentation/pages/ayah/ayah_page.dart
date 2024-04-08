import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../features/ayah/ayah.dart';
import '../../../injection.dart';
import '../../presentation.dart';

part 'ayah_page.component.dart';

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
          backgroundColor: Colors.transparent,
        ),
        body: BlocBuilder<AyahsBloc, AyahsState>(
          builder: (context, state) {
            if ((state is AyahInitial) || (state is AyahLoading)) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is AyahLoaded) {
              Ayah ayah = state.ayah;
              return AyahView(ayah: ayah);
            } else {
              return const Center(child: Text('Something went wrong!'));
            }
          },
        ),
      ),
    );
  }
}
