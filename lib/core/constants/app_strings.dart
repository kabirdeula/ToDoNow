import 'package:to_do_now/features/onboarding/onboarding.dart';

import 'constants.dart';

class ListStrings {
  static List<OnboardingModel> onboardingStrings = [
    OnboardingModel(
      title: "Manage your tasks",
      image: AssetPaths.onboarding1,
      description: "You can easily manage all of your daily tasks",
    ),
    OnboardingModel(
      title: "Create daily routine",
      image: AssetPaths.onboarding2,
      description:
          "You can create your personalized routine to stay productive",
    ),
    OnboardingModel(
      title: "Organize your tasks",
      image: AssetPaths.onboarding3,
      description:
          "You can organize your daily tasks by adding your tasks into separate categories",
    ),
  ];
}