import 'package:flutter/material.dart';
import '../../values/text_styles.dart';
import '../../values/app_colors.dart';

class PopupNotice extends StatelessWidget {
  const PopupNotice({
    super.key,
    this.title,
    required this.textButton,
    this.content,
    this.closePopup = true,
    this.onTap,
  });
  final String? title;
  final String textButton;
  final Widget? content;
  final bool closePopup;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      shadowColor: AppColors.colorFF000000,
      backgroundColor: AppColors.colorff48596e,
      title: title != null
          ? Text(
              title!.toUpperCase(),
              textAlign: TextAlign.center,
              style: TextStyles.boldWhiteS24,
            )
          : const SizedBox.shrink(),
      content: content,
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        InkWell(
          onTap: () {
            if (closePopup) Navigator.of(context).pop();
            onTap;
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.colorFFf4c77f, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: AppColors.colorFF28384B,
            ),
            child: Text(
              textButton,
              style: TextStyles.mediumWhiteS16,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
