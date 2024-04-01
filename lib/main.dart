import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';
import 'observer.dart';
import 'presentation/presentation.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: true);
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(DevicePreview(
    enabled: !kDebugMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AppbarBloc>(),
      child: ScreenUtilInit(
        designSize: const Size(412.0, 916.0),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Qurani',
            theme: AppThemes.light,
            initialRoute: AppRoutes.initial,
            routes: AppRoutes.routes,
          );
        },
      ),
    );
  }
}
