import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../values/app_colors.dart';
import '../../values/text_styles.dart';
import '../button/primary_button.dart';

class PopupEditUser extends StatelessWidget {
  PopupEditUser({
    super.key,
    required this.title,
    this.content = '',
    required this.titleButton1,
    required this.titleButton2,
    required this.validateName,
    this.onTap,
    this.onTapCancel,
    this.textController,
    this.onCall,
  });

  final String title;
  final String content;
  final String titleButton1;
  final String titleButton2;
  final String validateName;
  final void Function()? onTap;
  final void Function()? onTapCancel;
  final TextEditingController? textController;
  final _formKey = GlobalKey<FormState>();
  final VoidCallback? onCall;

  bool _validateUsername(String value) {
    if (validateName.isEmpty) return false;
    List<String> badWords = validateName.split(",");
    for (var badWord in badWords) {
      if (value.toLowerCase().contains(badWord.trim())) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        if (didPop) {
          onCall?.call();
        }
      },
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: AppColors.colorFFFFFFFF,
        title: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyles.mediumMBlackS18,
        ),
        content: textController != null
            ? Form(
                key: _formKey,
                child: TextFormField(
                  controller: textController,
                  autofocus: true,
                  onTapOutside: (e) {
                    FocusScope.of(context).unfocus();
                  },
                  validator: (value) {
                    if (value != null && _validateUsername(value)) {
                      return "Tên người dùng không hợp lệ";
                    }
                    if (value == null || value.trim().isEmpty) {
                      return 'Vui lòng nhập tên để tiếp tục';
                    }
                    if (value.length > 40) {
                      return "Vui lòng nhập tên tối đa 40 ký tự! ";
                    }
                    return null;
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(40),
                  ],
                  decoration: InputDecoration(
                    hintText: 'Phạm Văn A',
                    border: InputBorder.none,
                    hintStyle: TextStyles.regularMBlackS18,
                    fillColor: AppColors.colorFFFFFFFF,
                    contentPadding: const EdgeInsets.all(8.0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.colorFF000000,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.colorFF000000,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.colorFF000000,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.colorFF000000,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.colorFF000000,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  maxLines: 1,
                  style: TextStyles.regularMBlackS18,
                  cursorColor: AppColors.colorFF000000,
                ),
              )
            : Text(
                content,
                style: TextStyles.regularBlackS16,
                textAlign: TextAlign.justify,
              ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          Column(
            children: [
              PrimaryButton(
                onTap: ((textController == null) ||
                        (_formKey.currentState != null &&
                            textController != null &&
                            _formKey.currentState!.validate()))
                    ? onTap
                    : null,
                title: titleButton1,
                backgroundColor: AppColors.colorFF000000,
                textColor: AppColors.colorFFFFFFFF,
                textSize: 16,
                borderColor: AppColors.colorFF000000,
                textWeight: FontWeight.w600,
              ),
              const SizedBox(
                height: 12,
              ),
              PrimaryButton(
                onTap: onTapCancel ?? () => Navigator.of(context).pop(),
                title: titleButton2,
                borderColor: AppColors.colorFF000000,
                backgroundColor: AppColors.transparent,
                textColor: AppColors.colorFF000000,
                textSize: 16,
                textWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
