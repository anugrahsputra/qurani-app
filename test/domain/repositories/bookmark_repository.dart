import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/features/bookmark/bookmark.dart';

import '../../helper/injection.dart';

void main() {
  late BookmarkLocalDatasource mockDatasource;
  late BookmarkRepository repository;

  setUp(() {
    registerSl();
    mockDatasource = getMockBookmarkLocalDatasource();
    repository = IBookmarkRepository(datasource: mockDatasource);
  });

  tearDown(() => unregisterSl());

  group('BookmarkRepository', () {
    // test here..
  });
}
