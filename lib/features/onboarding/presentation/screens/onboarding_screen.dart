import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../routes/routes.dart';
import '../../onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingCubit>();
    final onboardingItem = ListStrings.onboardingStrings;

    return Scaffold(
      body: SafeArea(
        child: ScreenPadding(
          child: Stack(
            children: [
              PageView.builder(
                controller: cubit.pageController,
                onPageChanged: cubit.updatePage,
                itemCount: onboardingItem.length,
                itemBuilder: (_, index) => OnboardingBody(
                  image: onboardingItem[index].image,
                  title: onboardingItem[index].title,
                  description: onboardingItem[index].description,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomTextButton(
                  label: 'skip',
                  onPressed: () async {
                    // await sl<SettingsService>().setFirstTimeUser();
                    if (!context.mounted) return;
                    context.go(AppRoutes.start.path);
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: BlocBuilder<OnboardingCubit, int>(
                  builder: (context, state) {
                    return OnboardingNavigation(
                      cubit: cubit,
                      totalPage: onboardingItem.length,
                      currentPage: state,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
