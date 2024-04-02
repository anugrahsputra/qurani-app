import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';
import '../../../injection.dart';
import '../../presentation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final SplashCubit splashCubit = sl<SplashCubit>();
  final AppNavigator appNavigator = sl<AppNavigator>();

  bool hasNavigate = false;

  String? nextPage;

  @override
  void initState() {
    splashCubit.fetchNextPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => splashCubit,
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          if (state is SplashLoaded) {
            nextPage = state.nextPage;
            goToNextPage();
          }
        },
        child: AppScaffold(
          backgroundColor: AppColors.primaryContainer,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircularProgressIndicator(
                  color: AppColors.onPrimary,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  goToNextPage() {
    if (!hasNavigate && nextPage != null) {
      hasNavigate = true;
      if (nextPage == AppPages.home) {
        appNavigator.goToHome(context);
      }
    }
  }
}
