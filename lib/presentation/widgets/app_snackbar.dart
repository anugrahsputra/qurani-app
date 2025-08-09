import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';

class AppSnackbar {
  static void showError(BuildContext context, String message) {
    showSnackBar(context, message: message, snackbarColor: AppColors.error);
  }

  static void showSuccess(BuildContext context, String message) {
    showSnackBar(context, message: message, snackbarColor: Colors.green);
  }

  static void showSnackBar(
    BuildContext context, {
    required String message,
    required Color snackbarColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: snackbarColor,
        content: SizedBox(
          height: 20,
          child: Text(
            message,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.onError,
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
