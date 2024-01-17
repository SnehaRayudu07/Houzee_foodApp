import 'controller/verification_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class VerificationPageDialog extends StatelessWidget {
  VerificationPageDialog(this.controller, {Key? key}) : super(key: key);

  VerificationPageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 317.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
        decoration: AppDecoration.fillPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder35),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 11.h),
                  child: CustomIconButton(
                      height: 23.v,
                      width: 22.h,
                      alignment: Alignment.centerRight,
                      onTap: () {
                        onTapBtnIconButton();
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCloseDeepOrange300))),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 63.h),
                  child: Text("msg_verification_code".tr,
                      style: theme.textTheme.titleLarge)),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: Text("msg_a_verification_code".tr,
                          style: CustomTextStyles.bodySmallBluegray400e501))),
              SizedBox(height: 25.v),
              Padding(
                  padding: EdgeInsets.only(right: 9.h),
                  child: CustomTextFormField(
                      controller: controller.verificationCodeController,
                      hintText: "msg_verification_code".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 30.h, vertical: 15.v),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimaryTL25,
                      fillColor: appTheme.blueGray50)),
              SizedBox(height: 23.v),
              CustomElevatedButton(
                  height: 39.v,
                  width: 178.h,
                  text: "lbl_reset_password".tr,
                  margin: EdgeInsets.only(left: 43.h),
                  buttonStyle: CustomButtonStyles.fillPrimaryTL19,
                  buttonTextStyle:
                      CustomTextStyles.bodyMediumPrimaryContainer14,
                  onPressed: () {
                    onTapResetPassword();
                  }),
              SizedBox(height: 19.v),
              Padding(
                  padding: EdgeInsets.only(left: 101.h),
                  child: Text("lbl_change_email".tr,
                      style: CustomTextStyles.bodySmallDeeporange300
                          .copyWith(decoration: TextDecoration.underline))),
              SizedBox(height: 37.v)
            ]));
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.androidLargeOneScreen,
    );
  }

  /// Navigates to the newPasswordPageScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.newPasswordPageScreen,
    );
  }
}
