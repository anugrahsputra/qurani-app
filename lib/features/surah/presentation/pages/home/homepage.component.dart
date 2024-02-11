part of 'homepage.dart';

class SurahCards extends StatelessWidget {
  const SurahCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahBloc, SurahState>(
      builder: (context, state) {
        if (state is SurahLoaded) {
          List<SurahEntity> surahs = state.listSurah;
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: surahs.length,
              itemBuilder: (context, index) {
                final surah = state.listSurah[index];
                return ListTile(
                  title: Text(surah.name.translation.id),
                  subtitle: Text(surah.name.long),
                );
              },
            ),
          );
        } else if (state is SurahLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const Center(
            child: Text('bruh'),
          );
        }
      },
    );
  }
}
