import 'package:flutter/material.dart';

import '../../values/app_colors.dart';
import '../../values/text_styles.dart';
import '../button/primary_button.dart';

class PopupPrimary extends StatelessWidget {
  const PopupPrimary({
    super.key,
    required this.title,
    required this.titleButton1,
    required this.titleButton2,
    required this.onTap,
    this.content,
    this.showLoading = false,
  });
  final String title;
  final String? content;
  final String titleButton1;
  final String titleButton2;
  final bool showLoading;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      shadowColor: AppColors.colorFF000000,
      backgroundColor: AppColors.colorff48596e,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyles.mediumMWhiteS18,
      ),
      content: content != null
          ? Text(
              content!,
              textAlign: TextAlign.center,
              style: TextStyles.size14,
            )
          : null,
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        Column(
          children: [
            PrimaryButton(
              onTap: onTap,
              title: titleButton1,
              backgroundColor: AppColors.colorff48596e,
              textColor: AppColors.colorFFFFFFFF,
              textSize: 16,
              borderColor: AppColors.colorff48596e,
              textWeight: FontWeight.w600,
              showLoading: showLoading,
            ),
            const SizedBox(
              height: 12,
            ),
            PrimaryButton(
              onTap: () {
                Navigator.of(context).pop();
              },
              title: titleButton2,
              borderColor: AppColors.colorFFFFFFFF,
              backgroundColor: AppColors.transparent,
              textColor: AppColors.colorFFFFFFFF,
              textSize: 16,
              textWeight: FontWeight.w600,
            ),
          ],
        ),
      ],
    );
  }
}
