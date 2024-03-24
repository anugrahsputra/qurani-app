import 'package:flutter/material.dart';
import 'package:qurani/core/core.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    this.appBar,
    this.backgroundColor,
    this.body,
    this.resizeToAvoidBottomInset,
    this.extendBodyBehindAppBar = false,
    this.onThemeModeChange,
  });

  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? body;
  final bool? resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final Function(ThemeMode theme)? onThemeModeChange;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      backgroundColor: AppColors.background,
      body: widget.body,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
    );
  }
}
