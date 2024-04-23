import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

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
  final AppNavigator appNavigator = sl<AppNavigator>();

  late Uint8List image;

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
          actions: const [
            ShareIcon(),
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
                    AyahView(ayah: ayah),
                    FilledButton.icon(
                      onPressed: () {
                        showMaterialModalBottomSheet(
                          clipBehavior: Clip.antiAlias,
                          context: context,
                          builder: (context) => SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: TafsirView(
                              ayah: ayah,
                              appNavigator: appNavigator,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.book),
                      label: const Text('Baca Tafsir'),
                    ),
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

class ShareIcon extends StatefulWidget {
  const ShareIcon({super.key});

  @override
  State<ShareIcon> createState() => _ShareIconState();
}

class _ShareIconState extends State<ShareIcon> {
  final ScreenshotController _screenshotController = ScreenshotController();

  late Uint8List image;

  void shareButton(Ayah ayah) async {
    AppSnackbar.showSnackBar(context,
        message: 'Getting image...', snackbarColor: AppColors.onBackground);

    final mediaQuery = MediaQuery.of(context);
    final pixelRatio = mediaQuery.devicePixelRatio;
    _screenshotController
        .captureFromWidget(
      MediaQuery(
          data: mediaQuery.copyWith(devicePixelRatio: pixelRatio * 2),
          child: AyahImagePreview(ayah: ayah)),
      delay: const Duration(milliseconds: 1000),
    )
        .then(
      (imgCaptured) async {
        image = imgCaptured;
        String fileName =
            "${ayah.surah.name.transliteration.id}_${ayah.surah.number}${ayah.number.inSurah}"
                .replaceAll('-', '_')
                .toLowerCase();

        final dir = await getApplicationDocumentsDirectory();
        final imagePath = await File('${dir.path}/$fileName.png').create();
        await imagePath.writeAsBytes(image);

        log('image path $imagePath');
        await Share.shareXFiles(
          [XFile(imagePath.path)],
          text: ayah.surah.name.transliteration.id,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AyahsBloc, AyahsState>(
      builder: (context, state) {
        if ((state is AyahInitial) || (state is AyahLoading)) {
          return IconButton(
            onPressed: () => AppSnackbar.showSnackBar(
              context,
              message: 'Page still loading',
              snackbarColor: AppColors.errorContainer,
            ),
            icon: const Icon(Icons.share_rounded),
          );
        } else if (state is AyahLoaded) {
          return IconButton(
            onPressed: () => shareButton(state.ayah),
            icon: const Icon(Icons.share_rounded),
          );
        } else {
          return IconButton(
            onPressed: () => AppSnackbar.showSnackBar(
              context,
              message: 'Page still loading',
              snackbarColor: AppColors.errorContainer,
            ),
            icon: const Icon(Icons.share_rounded),
          );
        }
      },
    );
  }
}
