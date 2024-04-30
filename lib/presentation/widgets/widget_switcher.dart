import 'package:flutter/material.dart';

class WidgetSwitcher extends StatelessWidget {
  const WidgetSwitcher({
    super.key,
    this.duration,
    this.switchInCurve,
    this.switchOutCurve,
    this.reverseDuration,
    required this.isWidgetSwitched,
    required this.switchWidget1,
    required this.switchWidget2,
  });

  final bool isWidgetSwitched;
  final Widget switchWidget1;

  final Widget switchWidget2;
  final Duration? duration;
  final Curve? switchInCurve;
  final Curve? switchOutCurve;
  final Duration? reverseDuration;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration ?? const Duration(milliseconds: 500),
      switchInCurve: switchInCurve ?? Curves.easeInOut,
      switchOutCurve: switchOutCurve ?? Curves.easeInOut,
      reverseDuration: reverseDuration ?? Duration.zero,
      child: isWidgetSwitched ? switchWidget1 : switchWidget2,
    );
  }
}
