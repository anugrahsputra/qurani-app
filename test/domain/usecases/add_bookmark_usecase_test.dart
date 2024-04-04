import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/surah_detail_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkRepository mockRepository;
  late AddBookmarkUsecase usecase;

  setUp(() {
    registerSl();
    mockRepository = getMockBookmarkRepository();
    usecase = AddBookmarkUsecase(repository: mockRepository);
  });

  group('AddBookmarkUsecase', () {
    test('should add bookmark to local database', () async {
      when(mockRepository.insertBookmark(tVerse, ''))
          .thenAnswer((_) async => const Right('Insert bookmark success'));

      final result = await usecase.call(tVerse, '');

      expect(result, const Right('Insert bookmark success'));
    });
  });
}
