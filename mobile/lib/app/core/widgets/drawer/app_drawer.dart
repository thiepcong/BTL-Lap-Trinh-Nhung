import 'package:flutter/material.dart';

import '../../values/app_colors.dart';
import '../../values/text_styles.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, this.onHomeTap, this.onDeviceTap});

  final VoidCallback? onHomeTap;
  final VoidCallback? onDeviceTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.colorFF28384B,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          AppBar(
            title: const Text(
              "Mobile",
              style: TextStyles.boldWhiteS24,
            ),
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.colorff48596e,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: AppColors.colorFFFFFFFF,
            ),
            title: const Text(
              'Home',
              style: TextStyles.mediumWhiteS16,
            ),
            onTap: () {
              onHomeTap?.call();
            },
          ),
          const Divider(color: AppColors.colorFFFFFFFF),
          ListTile(
            leading: const Icon(
              Icons.device_unknown,
              color: AppColors.colorFFFFFFFF,
            ),
            title: const Text(
              'Device',
              style: TextStyles.mediumWhiteS16,
            ),
            onTap: () {
              onDeviceTap?.call();
            },
          ),
        ],
      ),
    );
  }
}
