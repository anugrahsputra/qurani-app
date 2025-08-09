part of 'search_page.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.focusNode,
    required this.surahBloc,
  });

  final SurahBloc surahBloc;
  final FocusNode focusNode;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.w),
      height: 50.h,
      child: TextField(
        focusNode: focusNode,
        onChanged: (query) {
          surahBloc.add(OnSearchSurah(query));
        },
        decoration: InputDecoration(
          hintText: "cth: 'Al-Baqarah'",
          contentPadding: EdgeInsets.zero,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.r)),
        ),
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({super.key, required this.appNavigator});

  final AppNavigator appNavigator;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahBloc, SurahState>(
      builder: (context, state) {
        if (state is SurahInitial || state is SurahLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SurahLoaded) {
          List<SurahEntity> surahs = state.listSurah;
          return BuildSurahList(listSurah: surahs);
        } else if (state is SurahSearched) {
          List<SurahEntity> filteredSurahs = state.filteredSurah;
          return filteredSurahs.isEmpty
              ? const Align(
                  alignment: Alignment.center,
                  child: Text('not found'),
                )
              : BuildSurahList(listSurah: filteredSurahs);
        } else {
          return const Align(
            alignment: Alignment.center,
            child: Text('idk wtf is going on here'),
          );
        }
      },
    );
  }
}

class BuildSurahList extends StatelessWidget {
  const BuildSurahList({super.key, required this.listSurah});

  final List<SurahEntity> listSurah;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listSurah.length,
      itemBuilder: (context, index) {
        var surah = listSurah[index];
        return InkWell(
          onTap: () =>
              sl<AppNavigator>().goToDetail(context, surahNumber: surah.number),
          child: SurahCardView(surah: surah),
        );
      },
    );
  }
}
