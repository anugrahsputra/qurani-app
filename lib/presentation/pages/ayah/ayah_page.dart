import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screenshot/screenshot.dart';

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

  final ScreenshotController _screenshotController = ScreenshotController();

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
          actions: [
            BlocBuilder<AyahsBloc, AyahsState>(
              builder: (context, state) {
                final result = state is AyahLoaded;
                if ((state is AyahInitial) || (state is AyahLoading)) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_rounded),
                  );
                } else if (result) {
                  return IconButton(
                    onPressed: () {
                      AppSnackbar.showSnackBar(context,
                          message: 'Getting image...',
                          snackbarColor: AppColors.onBackground);
                      _screenshotController
                          .captureFromWidget(AyahView(ayah: state.ayah),
                              delay: const Duration(milliseconds: 800))
                          .then(
                        (imgCaptured) {
                          // TODO: show dialog to preview image before sharing them
                          showAdaptiveDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: MediaQuery.sizeOf(context).height * 0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: AppColors.onPrimary,
                                ),
                                child: Image.memory(imgCaptured),
                              );
                            },
                          );
                        },
                      );
                    },
                    icon: const Icon(Icons.share_rounded),
                  );
                } else {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_rounded),
                  );
                }
              },
            ),
          ],
        ),
        body: BlocBuilder<AyahsBloc, AyahsState>(
          builder: (context, state) {
            if ((state is AyahInitial) || (state is AyahLoading)) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is AyahLoaded) {
              Ayah ayah = state.ayah;
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Screenshot(
                      controller: _screenshotController,
                      child: AyahView(ayah: ayah),
                    ),
                    TafsirView(ayah: ayah),
                  ],
                ),
              );
            } else {
              return const Center(child: Text('Something went wrong!'));
            }
          },
        ),
      ),
    );
  }
}
