import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:qurani/core/core.dart';

import 'features/bookmark/bookmark.dart';
import 'injection.dart';
import 'observer.dart';

Future<void> main() async {
  CustomLog.initialize(showLog: true);
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  await Hive.initFlutter();
  Hive.registerAdapter(BookmarkAdapter());
  await Hive.openBox<BookmarkModel>('bookmarks');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final BookmarkBloc bookmarkBloc = sl<BookmarkBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bookmarkBloc..add(const BookmarkGet()),
      child: MaterialApp(
        title: 'Qurani',
        theme: AppThemes.light,
        initialRoute: AppRoutes.initial,
        routes: AppRoutes.routes,
      ),
    );
  }
}
