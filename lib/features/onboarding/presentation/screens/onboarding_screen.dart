import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:to_do_now/core/constants/constants.dart';
import 'package:to_do_now/core/di/di.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/onboarding/onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = sl<OnboardingCubit>();
    final onboardingItem = ListStrings.onboardingStrings;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              PageView.builder(
                controller: cubit.pageController,
                onPageChanged: cubit.updatePage,
                itemCount: onboardingItem.length,
                itemBuilder: (BuildContext context, int index) {
                  return OnboardingBody(
                    image: onboardingItem[index].image,
                    title: onboardingItem[index].title,
                    description: onboardingItem[index].description,
                  );
                },
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Column(
                  spacing: 20,
                  children: [
                    BlocBuilder<OnboardingCubit, int>(
                      builder: (context, state) {
                        return SmoothPageIndicator(
                          controller: cubit.pageController,
                          count: onboardingItem.length,
                          effect: ExpandingDotsEffect(dotHeight: 8),
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomTextButton(label: 'back'),
                        BlocBuilder<OnboardingCubit, int>(
                            builder: (context, state) {
                          return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              backgroundColor: Color(0xFF0F68EE),
                            ),
                            onPressed: () => state == onboardingItem.length - 1
                                ? null
                                : cubit.nextPage(
                                    totalPages: onboardingItem.length),
                            child: Text(
                              state == onboardingItem.length - 1
                                  ? 'Get Started'
                                  : 'Next',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.white),
                            ),
                          );
                        }),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomTextButton(label: 'skip'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
