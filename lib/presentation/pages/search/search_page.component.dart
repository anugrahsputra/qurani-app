part of 'search_page.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.surahBloc,
  });

  final SurahBloc surahBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: TextField(
        onChanged: (query) {
          surahBloc.add(OnSearchSurah(query));
        },
        decoration: InputDecoration(
          hintText: "cth: 'Al-Baqarah'",
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
    required this.appNavigator,
  });

  final AppNavigator appNavigator;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahBloc, SurahState>(
      builder: (context, state) {
        if (state is SurahInitial || state is SurahLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is SurahLoaded) {
          List<SurahEntity> surahs = state.listSurah;
          return Expanded(
            child: ListView.builder(
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                var surah = surahs[index];
                return InkWell(
                  child: SurahCardView(surah: surah),
                  onTap: () => appNavigator.goToDetail(
                    context,
                    surahNumber: surah.number,
                  ),
                );
              },
            ),
          );
        } else if (state is SurahSearched) {
          List<SurahEntity> filteredSurahs = state.filteredSurah;

          if (filteredSurahs.isEmpty) {
            return const Align(
              alignment: Alignment.center,
              child: Text('not found'),
            );
          }
          return Expanded(
            child: ListView.builder(
              itemCount: filteredSurahs.length,
              itemBuilder: (context, index) {
                var surah = filteredSurahs[index];
                return InkWell(
                  child: SurahCardView(surah: surah),
                  onTap: () => appNavigator.goToDetail(
                    context,
                    surahNumber: surah.number,
                  ),
                );
              },
            ),
          );
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
