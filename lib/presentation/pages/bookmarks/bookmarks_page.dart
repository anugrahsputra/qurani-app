import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../features/bookmark/bookmark.dart';
import '../../../injection.dart';
import '../../presentation.dart';

part 'bookmark_page.component.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({super.key});

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  final BookmarkBloc bookmarkBloc = sl<BookmarkBloc>();
  final AppNavigator appNavigator = sl<AppNavigator>();

  @override
  void initState() {
    Future.microtask(() => bookmarkBloc.add(const OnFetchBookmark()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => bookmarkBloc)],
      child: AppScaffold(
        appBar: AppBar(
          title: Text('Bookmarks', style: GoogleFonts.poppins()),
          backgroundColor: AppColors.primaryContainer,
        ),
        body: BlocBuilder<BookmarkBloc, BookmarkState>(
          builder: (ctx, state) {
            if (state is BookmarkInitial) {
              return const Center(
                child: Text('Anda belum menambahkan bookmark'),
              );
            } else if (state is BookmarkLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is BookmarkLoaded) {
              final List<Bookmark> data = state.bookmarks;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (ctx, i) {
                  Bookmark bookmark = data[i];
                  return BookmarkCard(
                    bookmark: bookmark,
                    appNavigator: appNavigator,
                  );
                },
              );
            } else {
              return Center(
                child: Text('Terjadi kesalahan.', style: GoogleFonts.poppins()),
              );
            }
          },
        ),
      ),
    );
  }
}
