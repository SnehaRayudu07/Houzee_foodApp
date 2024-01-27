import 'package:firebase_auth/firebase_auth.dart';
import 'package:houzee/global/common/toast.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

import 'controller/android_large_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';
import 'package:houzee/presentation/forgot_password_page_dialog/forgot_password_page_dialog.dart';
import 'package:houzee/presentation/forgot_password_page_dialog/controller/forgot_password_page_controller.dart';
import 'package:houzee/presentation/sign_up_two_dialog/sign_up_two_dialog.dart';
import 'package:houzee/presentation/sign_up_two_dialog/controller/sign_up_two_controller.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeOneScreen extends GetWidget<AndroidLargeOneController> {
  AndroidLargeOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.primaryContainer,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            height: SizeUtils.height,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 167.h, bottom: 252.v),
                                      child: Text("lbl_sign_in_with".tr,
                                          style: theme.textTheme.bodySmall))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 36.h, vertical: 20.v),
                                      decoration: AppDecoration.fillGray,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle128,
                                                height: 202.v,
                                                width: 315.h),
                                            SizedBox(height: 27.v),
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle130,
                                                height: 100.v,
                                                width: 103.h,
                                                alignment: Alignment.centerLeft,
                                                margin: EdgeInsets.only(
                                                    left: 110.h)),
                                            SizedBox(height: 51.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 32.h, right: 31.h),
                                                child: CustomTextFormField(
                                                    controller: controller
                                                        .emailController,
                                                    hintText: "lbl_email".tr,
                                                    hintStyle: theme
                                                        .textTheme.bodyMedium!,
                                                    textInputType: TextInputType
                                                        .emailAddress,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          (!isValidEmail(value,
                                                              isRequired:
                                                                  true))) {
                                                        return "err_msg_please_enter_valid_email"
                                                            .tr;
                                                      }
                                                      return null;
                                                    },
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 14.h,
                                                            vertical: 15.v),
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .outlineSecondaryContainer,
                                                    filled: false)),
                                            SizedBox(height: 47.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 32.h, right: 31.h),
                                                child: CustomTextFormField(
                                                    controller: controller
                                                        .passwordController,
                                                    hintText: "lbl_password".tr,
                                                    hintStyle: theme
                                                        .textTheme.bodyMedium!,
                                                    textInputAction:
                                                        TextInputAction.done,
                                                    textInputType: TextInputType
                                                        .visiblePassword,
                                                    validator: (value) {
                                                      if (value == null ||
                                                          (!isValidPassword(
                                                              value,
                                                              isRequired:
                                                                  true))) {
                                                        return "err_msg_please_enter_valid_password"
                                                            .tr;
                                                      }
                                                      return null;
                                                    },
                                                    obscureText: true,
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 17.h,
                                                            vertical: 15.v),
                                                    borderDecoration:
                                                        TextFormFieldStyleHelper
                                                            .outlineSecondaryContainer,
                                                    filled: false)),
                                            SizedBox(height: 44.v),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotPassword();
                                                },
                                                child: Text(
                                                    "msg_forgot_password2".tr,
                                                    style: CustomTextStyles
                                                        .bodyMediumBlack90001)),
                                            //  Spacer(),
                                            SizedBox(height: 20.v),
                                            _buildSignIn(),
                                            /*  Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomIconButton(
                                                      height: 33.v,
                                                      width: 32.h,
                                                      child: CustomImageView()),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 18.h),
                                                      child: CustomIconButton(
                                                          height: 33.v,
                                                          width: 32.h,
                                                          child:
                                                              CustomImageView()))
                                                ]),*/
                                            SizedBox(height: 30.v),
                                            _buildArrowUp()
                                          ])))
                            ])))))));
  }

  /// Section Widget
  _buildSignIn() {
    return CustomElevatedButton(
        height: 50.v,
        text: "Sign In".tr,
        margin: EdgeInsets.only(left: 23.h, right: 51.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.bodyLarge17,
        onPressed: () {
          onTapSignIn();
        });
  }

  onTapSignIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controller.emailController.text,
              password: controller.passwordController.text)
          .then((value) {
        Get.toNamed(
          AppRoutes.mainHomePageContainer1Screen,
        );
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        showToast(message: 'Invalid email or password');
      } else {
        showToast(message: 'An error occured: ${e.code}');
      }
    }
  }

  Widget _buildArrowUp() {
    return GestureDetector(
        onTap: () {
          onTapArrowUp();
        },
        child: Container(
            margin: EdgeInsets.only(right: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 156.h, vertical: 26.v),
            decoration: AppDecoration.outlineDeepOrange
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL33),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 8.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowUp,
                      height: 7.v,
                      width: 16.h,
                      onTap: () {
                        onTapImgArrowUp();
                      })
                ])));
  }

  /// Displays a dialog with the [ForgotPasswordPageDialog] content.
  onTapTxtForgotPassword() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: ForgotPasswordPageDialog(
        Get.put(
          ForgotPasswordPageController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [SignUpTwoDialog] content.
  onTapArrowUp() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SignUpTwoDialog(
        Get.put(
          SignUpTwoController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [SignUpTwoDialog] content.
  onTapImgArrowUp() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SignUpTwoDialog(
        Get.put(
          SignUpTwoController(),
        ),
      ),
    ));
  }
}
