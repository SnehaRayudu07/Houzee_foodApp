import 'controller/forgot_password_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';
import 'package:houzee/presentation/verification_page_dialog/verification_page_dialog.dart';
import 'package:houzee/presentation/verification_page_dialog/controller/verification_page_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordPageDialog extends StatelessWidget {
  ForgotPasswordPageDialog(this.controller, {Key? key}) : super(key: key);

  ForgotPasswordPageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 317.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 19.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: CustomIconButton(
                  height: 20.v,
                  width: 27.h,
                  alignment: Alignment.centerRight,
                  onTap: () {
                    onTapBtnIconButton();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCloseDeepOrange300))),
          SizedBox(height: 14.v),
          SizedBox(
              width: 81.h,
              child: Text("msg_forgot_password".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleLarge)),
          SizedBox(height: 21.v),
          CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_enter_your_account".tr,
              hintStyle: theme.textTheme.bodyMedium!,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
              borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL25,
              fillColor: appTheme.blueGray50),
          SizedBox(height: 26.v),
          CustomElevatedButton(
              height: 39.v,
              width: 178.h,
              text: "lbl_reset_password".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL19,
              buttonTextStyle: CustomTextStyles.bodyMediumPrimaryContainer14,
              onPressed: () {
                onTapResetPassword();
              }),
          SizedBox(height: 56.v)
        ]));
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.androidLargeOneScreen,
    );
  }

  /// Displays a dialog with the [VerificationPageDialog] content.
  onTapResetPassword() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: VerificationPageDialog(
        Get.put(
          VerificationPageController(),
        ),
      ),
    ));
  }
}
