import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class HomeSearchBar extends StatelessWidget {
  final TextEditingController controller;
  const HomeSearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      name: 'search',
      controller: controller,
      hintText: 'Search...',
    );
  }
}
