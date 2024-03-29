import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/bookmark/bookmark.dart';
import '../../../injection.dart';
import '../../presentation.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  final BookmarkBloc bookmarkBloc = sl<BookmarkBloc>();

  @override
  void initState() {
    Future.microtask(() => bookmarkBloc.add(const OnFetchBookmark()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => bookmarkBloc,
        ),
      ],
      child: AppScaffold(
        appBar: AppBar(
          title: const Text('Bookmarks'),
        ),
        body: BlocBuilder<BookmarkBloc, BookmarkState>(builder: (ctx, state) {
          return state.when(
            initial: () => const Center(child: Text('Empty')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (data) {
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (ctx, i) {
                  Bookmark bookmark = data[i];
                  String surah =
                      '${bookmark.surahName} ${bookmark.id}${bookmark.inSurah}';
                  return ListTile(
                    title: Text(surah),
                    subtitle: Text(bookmark.textArab),
                  );
                },
              );
            },
            error: (message) => Center(child: Text(message)),
          );
        }),
      ),
    );
  }
}
