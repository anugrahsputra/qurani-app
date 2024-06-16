import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qurani/core/core.dart';

import 'injection.dart';
import 'observer.dart';
import 'presentation/presentation.dart';

Future<void> initialize() async {
  CustomLog.initialize(showLog: kDebugMode);
  Bloc.observer = MyBlocObserver();
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
