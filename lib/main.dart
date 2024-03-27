import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';
import 'observer.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: true);
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
