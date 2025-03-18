import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../profile/profile.dart';
import '../../dashboard.dart';

class DashboardScreen extends StatelessWidget with DashboardMixin {
  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
        return state.maybeWhen(
          initial: () => screens[0],
          loaded: (index) => screens[index],
          orElse: () => Placeholder(),
        );
      }),
      floatingActionButton: CustomFloatingActionButton(
        onPressed: () => createTask(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) {
          return NavigationBar(
            selectedIndex:
                state.maybeWhen(orElse: () => 0, loaded: (index) => index),
            onDestinationSelected: (index) =>
                context.read<DashboardCubit>().changeIndex(index),
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.calendar_month_outlined), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.access_time), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.person_outline), label: 'Profile'),
            ],
          );
        },
      ),
    );
  }
}
