import 'package:flutter/material.dart';
import 'package:qurani/core/core.dart';

import 'features/surah/surah.dart';
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
      ),
      home: const Homepage(),
    );
  }
}
