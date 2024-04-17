import 'package:flutter/material.dart';

import '../../core/core.dart';

class AppScaffoldLinearBaseColor extends StatelessWidget {
  const AppScaffoldLinearBaseColor({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.primary,
            AppColors.primaryContainer,
          ],
        ),
      ),
      child: child,
    );
  }
}
