import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';
import 'observer.dart';
import 'presentation/presentation.dart';

Future<void> initialize() async {
  await FirebaseService.init();
  Bloc.observer = MyBlocObserver();
  await setup();

  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AppbarBloc>(),
        ),
      ],
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
