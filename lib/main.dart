import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: true);
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qurani',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      initialRoute: AppRoutes.initial,
      routes: AppRoutes.routes,
    );
  }
}
