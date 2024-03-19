import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: true);
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  initializeDateFormatting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qurani',
      theme: AppThemes.light,
      initialRoute: AppRoutes.initial,
      routes: AppRoutes.routes,
    );
  }
}
