// ignore: file_names
import 'package:flutter/material.dart';
import '../../values/app_colors.dart';
import '../../values/text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.leadingWidth = 40,
    this.leading,
    this.actions,
    required this.title,
    this.backgroundColor = AppColors.colorff48596e,
    this.titleStyle = TextStyles.boldWhiteS20Intalic,
  });
  final double leadingWidth;
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final Color backgroundColor;
  final TextStyle titleStyle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: leadingWidth,
      leading: leading,
      shadowColor: AppColors.colorFF000000,
      title: Text(
        title,
        style: titleStyle,
      ),
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppbarItem extends StatelessWidget {
  const CustomAppbarItem({
    super.key,
    this.onPressed,
    this.background = AppColors.colorFF28384B,
    this.iconSize,
    this.icon,
    this.iconColor = AppColors.colorFFFFFFFF,
    this.width = 40,
  });
  final void Function()? onPressed;
  final Color background;
  final Color iconColor;
  final double? iconSize;
  final IconData? icon;
  // final String? iconAsset;
  final double width;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: background,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
