import 'package:to_do_now/features/onboarding/onboarding.dart';

import 'di.dart';

void setupCubitInjection() {
  sl.registerSingleton<OnboardingCubit>(OnboardingCubit());
}
