import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkRepository mockRepository;
  late RemoveBookmarkUsecase usecase;

  setUp(() {
    registerSl();
    mockRepository = getMockBookmarkRepository();
    usecase = RemoveBookmarkUsecase(repository: mockRepository);
  });

  group('RemoveBookmarkUsecase', () {
    test('should called removebookmark from repository', () async {
      when(mockRepository.removeBookmark(tVerse, '', 1))
          .thenAnswer((_) async => const Right('Remove bookmark success'));

      final result = await usecase.call(tVerse, '', 1);

      expect(result, const Right('Remove bookmark success'));
    });
  });
}
