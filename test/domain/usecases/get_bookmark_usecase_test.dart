import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../dummy_data/bookmark_file_dummy.dart';
import '../../helper/injection.dart';

void main() {
  late BookmarkRepository mockRepository;
  late GetBookmarksUsecase usecase;

  setUp(() {
    registerSl();
    mockRepository = getMockBookmarkRepository();
    usecase = GetBookmarksUsecase(repository: mockRepository);
  });

  group('GetBookmarkRepository', () {
    test('should return list bookmark from repositroy', () async {
      when(mockRepository.getBookmarks())
          .thenAnswer((_) async => const Right([tBookmark]));

      final result = await usecase.call();

      expect(result, const Right([tBookmark]));
    });
  });
}
