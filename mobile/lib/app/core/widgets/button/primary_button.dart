// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../values/app_colors.dart';
import '../../values/text_styles.dart';

enum ButtonSize {
  /// height == 50
  large,

  /// height == 36
  small,

  /// height == 30
  extraSmall;

  double get height {
    switch (this) {
      case large:
        return 50;
      case small:
        return 36;
      case extraSmall:
        return 30;
    }
  }

  TextStyle get primaryTextStyle {
    switch (this) {
      case large:
        return TextStyles.bold14TitleBold;
      case small:
        return TextStyles.bold14TitleBold;
      case extraSmall:
        return TextStyles.bold14TitleBold;
    }
  }

  TextStyle get secondaryTextStyle {
    switch (this) {
      case large:
        throw UnimplementedError('No TextStyle for large SecondaryButton');
      case small:
      case extraSmall:
        return TextStyles.bold14TitleBold;
    }
  }

  TextStyle get tertiaryTextStyle {
    switch (this) {
      case large:
        throw UnimplementedError('No TextStyle for large TertiaryButton');
      case small:
      case extraSmall:
        return TextStyles.bold14TitleBold;
    }
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    this.enable = true,
    required this.title,
    this.onTap,
    this.width,
    this.showLoading = false,
    this.buttonSize = ButtonSize.large,
    required this.backgroundColor,
    required this.textColor,
    required this.textSize,
    this.textWeight = FontWeight.w400,
    this.borderColor = AppColors.colorFF000000,
    //this.fontSize = 14,
  }) : super(key: key);

  final bool enable;
  final String title;
  final void Function()? onTap;
  final double? width;
  final bool showLoading;
  final ButtonSize buttonSize;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final double textSize;
  final FontWeight textWeight;

  @override
  Widget build(BuildContext context) {
    final double height = buttonSize.height;
    return Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: showLoading
              ? const CircularProgressIndicator()
              : Text(
                  title,
                  style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                      fontWeight: textWeight),
                ),
        ),
      ),
    );
  }
}
