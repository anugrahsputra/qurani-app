import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../helper/injection.dart';

void main() {
  late BookmarkRepository mockRepository;
  late IsBookmarkUsecase usecase;

  setUp(() {
    registerSl();
    mockRepository = getMockBookmarkRepository();
    usecase = IsBookmarkUsecase(repository: mockRepository);
  });

  tearDown(() => unregisterSl());

  group('IsBookmarkUsecase', () {
    test('return true data is not null', () async {
      when(mockRepository.isBookmarked(1)).thenAnswer((_) async => true);

      final result = await usecase.call(1);

      expect(result, true);
    });

    test('return false if data is null ', () async {
      when(mockRepository.isBookmarked(1)).thenAnswer((_) async => false);

      final result = await usecase.call(1);

      expect(result, false);
    });
  });
}
