import 'package:flutter/material.dart';
import 'package:to_do_now/core/widgets/widgets.dart';
import 'package:to_do_now/features/dashboard/dashboard.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Hello'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(child: Icon(Icons.person)),
          ),
        ],
      ),
      body: EmptyHomeScreen(),
      floatingActionButton: CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.calendar_month_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}
