import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class SettingsMenuListTile extends StatelessWidget {
  const SettingsMenuListTile(
      {super.key,
      required this.icon,
      required this.title,
      required this.subtitle,
      this.trailing,
      this.onTap});
  final IconData icon;
  final String title, subtitle;
  final Widget? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.primary,
        size: 28,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
