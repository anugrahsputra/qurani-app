import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../features/ayah/ayah.dart';
import '../../presentation/presentation.dart';
import '../core.dart';

mixin ShareScreenshotMixin {
  void shareButton(
    BuildContext context,
    Ayah ayah,
    ScreenshotController screenshotController,
  ) async {
    AppSnackbar.showSnackBar(
      context,
      message: 'Getting image...',
      snackbarColor: AppColors.onBackground,
    );

    final mediaQuery = MediaQuery.of(context);
    final pixelRatio = mediaQuery.devicePixelRatio * 3;
    await screenshotController
        .captureFromWidget(
      MediaQuery(data: mediaQuery, child: AyahImagePreview(ayah: ayah)),
      delay: const Duration(milliseconds: 500),
      pixelRatio: pixelRatio,
    )
        .then(
      (image) async {
        String fileName =
            "${ayah.surah.name.transliteration.id}_${ayah.surah.number}${ayah.number.inSurah}"
                .replaceAll('-', '_')
                .toLowerCase();

        final dir = await getApplicationDocumentsDirectory();
        final imagePath = await File('${dir.path}/$fileName.png').create();
        await imagePath.writeAsBytes(image);

        await Share.shareXFiles(
          [XFile(imagePath.path)],
          text: ayah.surah.name.transliteration.id,
        );
      },
    );
  }
}
