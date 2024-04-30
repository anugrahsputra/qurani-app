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
    this.drawer,
    this.onDrawerChanged,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
  });

  final PreferredSizeWidget? appBar;
  final Color? backgroundColor;
  final Widget? body;
  final bool? resizeToAvoidBottomInset;
  final bool extendBodyBehindAppBar;
  final Function(ThemeMode theme)? onThemeModeChange;
  final Widget? drawer;
  final Function(bool)? onDrawerChanged;
  final Color? drawerScrimColor;
  final double? drawerEdgeDragWidth;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      drawer: widget.drawer,
      drawerScrimColor: widget.drawerScrimColor,
      drawerEdgeDragWidth: widget.drawerEdgeDragWidth,
      onDrawerChanged: widget.onDrawerChanged,
      backgroundColor: widget.backgroundColor ?? AppColors.background,
      body: widget.body,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
    );
  }
}
