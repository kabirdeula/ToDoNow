import 'package:flutter/material.dart';

import '../../../../core/themes/themes.dart';

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final Function()? onTap;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    this.color = Colors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.white),
      title: Text(title, style: AppTypography.bodyText1(color: color)),
      leading: Icon(icon, color: color),
    );
  }
}
