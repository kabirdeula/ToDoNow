import 'package:flutter/material.dart';
import 'package:to_do_now/core/core.dart';

class HomeSearchBar extends SliverPersistentHeaderDelegate {
  final TextEditingController controller;

  HomeSearchBar({required this.controller});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomTextFormField(
        name: "search",
        controller: controller,
        hintText: "Search...",
      ),
    );
  }

  @override
  double get maxExtent => 74.0;

  @override
  double get minExtent => 74.0;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
