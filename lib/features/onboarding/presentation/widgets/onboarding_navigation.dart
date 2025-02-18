import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/onboarding/onboarding.dart';

class OnboardingNavigation extends StatelessWidget {
  final OnboardingCubit cubit;
  final int totalPage;
  final int currentPage;

  const OnboardingNavigation({
    super.key,
    required this.cubit,
    required this.totalPage,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        SmoothPageIndicator(
          controller: cubit.pageController,
          count: totalPage,
          effect: ExpandingDotsEffect(dotHeight: 8),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextButton(label: 'back', onPressed: () => cubit.previous()),
            CustomElevatedButton(
              label: currentPage == totalPage - 1 ? 'Get Started' : 'Next',
              onPressed: () => currentPage == totalPage - 1
                  ? null
                  : cubit.nextPage(totalPage),
            ),
          ],
        ),
      ],
    );
  }
}
