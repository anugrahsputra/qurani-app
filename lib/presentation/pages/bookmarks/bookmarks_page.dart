import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
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
        body: BlocBuilder<BookmarkBloc, BookmarkState>(
          builder: (ctx, state) {
            if (state is BookmarkInitial) {
              return const Center(child: Text('You haven\'t add any bookmark'));
            } else if (state is BookmarkLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is BookmarkLoaded) {
              final List<Bookmark> data = state.bookmarks;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (ctx, i) {
                  Bookmark bookmark = data[i];
                  return BookmarkCard(bookmark: bookmark);
                },
              );
            } else {
              return const Center(
                  child: Text('if this the one then something is wrong'));
            }
          },
        ),
      ),
    );
  }
}

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({
    super.key,
    required this.bookmark,
  });

  final Bookmark bookmark;

  @override
  Widget build(BuildContext context) {
    String title = 'Surat ${bookmark.surahName}, ayat ${bookmark.inSurah}';

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: AppColors.onPrimary,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow.withOpacity(0.15),
            offset: const Offset(8, 8),
            blurRadius: 14,
            spreadRadius: -8,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryContainer,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                InkWell(
                  onTap: () {
                    // TODO: go to surah
                  },
                  child: const Icon(
                    Icons.chevron_right_rounded,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                bookmark.textArab,
                style: GoogleFonts.amiri(
                  height: 2,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bookmark.textTransliteration,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Gap(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bookmark.textTranslate,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
