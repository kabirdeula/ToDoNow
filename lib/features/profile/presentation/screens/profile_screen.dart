import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/themes.dart';
import '../../../../routes/routes.dart';
import '../../../authentication/authentication.dart';
import '../../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.isLoggedIn == false) context.go(AppRoutes.login.path);
      },
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(title: Text("Profile"), centerTitle: true),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 16.0),
                child: Column(
                  children: [
                    Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                              radius: 45, backgroundColor: Colors.grey[200]),
                          const SizedBox(height: 8),
                          Text("Test Name", style: AppTypography.bodyText1()),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            spacing: 16.0,
                            children: [
                              Expanded(
                                  child:
                                      TaskCard(label: 'Task Left', count: 12)),
                              Expanded(
                                  child:
                                      TaskCard(label: 'Task Done', count: 12)),
                            ],
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("Settings"),
                  ),
                  ProfileOption(icon: Icons.settings, title: 'App Settings'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("Account"),
                  ),
                  ProfileOption(
                    icon: Icons.person,
                    title: 'Change account name',
                  ),
                  ProfileOption(
                    icon: Icons.lock,
                    title: 'Change account password',
                  ),
                  ProfileOption(
                    icon: Icons.image,
                    title: 'Change account image',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text("ToDoNow"),
                  ),
                  // ProfileOption(icon: Icons.info, title: 'About US'),
                  // ProfileOption(icon: Icons.help, title: 'FAQ'),
                  // ProfileOption(icon: Icons.feedback, title: 'Help & Feedback'),
                  // ProfileOption(icon: Icons.thumb_up, title: 'Support US'),
                  ProfileOption(
                    icon: Icons.logout,
                    title: 'Log out',
                    color: Colors.red,
                    onTap: () => _showLogoutModal(context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLogoutModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Confirm Logout"),
          content: Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () => context.pop(context), // Close modal
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                context.pop(context); // Close modal
                context.read<AuthCubit>().logout();
              },
              child: Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
