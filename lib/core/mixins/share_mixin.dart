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
      message: 'Memuat...',
      snackbarColor: AppColors.primary,
    );

    final mediaQuery = MediaQuery.of(context);
    // Use a higher pixel ratio for crisper shared images
    final double pixelRatio = 4.0;
    await screenshotController
        .captureFromWidget(
          MediaQuery(
            data: mediaQuery,
            child: AyahImagePreview(ayah: ayah, includeBackground: true),
          ),
          delay: const Duration(milliseconds: 500),
          pixelRatio: pixelRatio,
        )
        .then((image) async {
          String fileName =
              "${ayah.surah.name.transliteration.id}_${ayah.surah.number}${ayah.number.inSurah}"
                  .replaceAll('-', '_')
                  .toLowerCase();

          final dir = await getApplicationDocumentsDirectory();
          final imagePath = await File('${dir.path}/$fileName.png').create();
          await imagePath.writeAsBytes(image);

          await SharePlus.instance.share(
            ShareParams(
              text: ayah.surah.name.transliteration.id,
              files: [XFile(imagePath.path)],
            ),
          );
        });
  }
}
