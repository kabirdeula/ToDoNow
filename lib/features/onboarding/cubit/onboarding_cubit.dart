import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<int> {
  final PageController pageController = PageController();

  OnboardingCubit() : super(0);

  void nextPage(int totalPages) {
    if (state < totalPages - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    }
  }

  void updatePage(int index) => emit(index);
}
