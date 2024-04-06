import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qurani/presentation/presentation.dart';

void main() {
  late AppbarBloc appbarBloc;

  setUp(() => appbarBloc = AppbarBloc());

  blocTest<AppbarBloc, AppbarState>(
    'emits [AppbarDisplay] when ToggleDisplay is added.',
    build: () => appbarBloc,
    act: (bloc) => appbarBloc.add(const ToggleDisplay()),
    expect: () => const [
      AppbarState(true),
    ],
  );
}
