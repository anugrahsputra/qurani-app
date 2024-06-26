import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/core.dart';

class FloatingBottomBar extends StatelessWidget {
  const FloatingBottomBar({
    super.key,
    required this.isFloating,
    this.children,
    this.curves = Curves.easeInOutCubic,
    this.duration,
    this.color,
  });

  final bool isFloating;
  final List<Widget>? children;
  final Duration? duration;
  final Curve curves;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: duration ?? const Duration(milliseconds: 700),
      curve: curves,
      bottom: isFloating ? -100.h : 40.h,
      left: 80,
      right: 80,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        decoration: BoxDecoration(
          color: color ?? AppColors.primaryContainer,
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withOpacity(0.85),
              offset: const Offset(8, 6),
              blurRadius: 14,
              spreadRadius: -8,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: children ?? [],
        ),
      ),
    );
  }
}
