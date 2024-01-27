import 'package:firebase_auth/firebase_auth.dart';
import 'package:houzee/global/common/toast.dart';

import 'controller/sign_up_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
//import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class SignUpTwoDialog extends StatelessWidget {
  SignUpTwoDialog(this.controller, {Key? key}) : super(key: key);

  SignUpTwoController controller;
  //BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 1.v),
        child: Column(children: [
          Spacer(),
          Container(
              width: 375.h,
              padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 17.v),
              decoration: AppDecoration.fillPrimaryContainer
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderTL33),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector7,
                        height: 5.v,
                        width: 38.h,
                        margin: EdgeInsets.only(left: 124.h),
                        onTap: () {
                          onTapImgVectorSeven();
                        }),
                    SizedBox(height: 50.v),
                    Padding(
                        padding: EdgeInsets.only(left: 100.h),
                        child: Text("lbl_sign_up".tr,
                            style: CustomTextStyles.headlineSmall25)),
                    SizedBox(height: 33.v),
                    _buildUserName(),
                    SizedBox(height: 22.v),
                    _buildEmail(),
                    SizedBox(height: 23.v),
                    _buildPassword(),
                    SizedBox(height: 29.v),
                    _buildConfirmpassword(),
                    SizedBox(height: 23.v),
                    _buildNeverHungryAgain(),
                    SizedBox(height: 33.v),
                    // Padding(
                    //     padding: EdgeInsets.only(left: 47.h),
                    //     child: Text("lbl_or_sign_up_with".tr,
                    //         style: CustomTextStyles.bodyMediumGray500e5)),
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
        padding: EdgeInsets.only(right: 17.h),
        child: CustomTextFormField(
            controller: controller.userNameController,
            hintText: "lbl_user_name".tr,
            hintStyle: CustomTextStyles.bodyMediumBluegray400e5,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
            fillColor: theme.colorScheme.primaryContainer));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "lbl_email".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
            fillColor: theme.colorScheme.primaryContainer));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(right: 18.h),
        child: CustomTextFormField(
            controller: controller.passwordController,
            hintText: "lbl_password".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 28.h, vertical: 15.v),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
            fillColor: theme.colorScheme.primaryContainer));
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 13.h),
        child: CustomTextFormField(
            controller: controller.confirmpasswordController,
            hintText: "msg_confirm_password".tr,
            hintStyle: theme.textTheme.bodyMedium!,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v),
            borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
            fillColor: theme.colorScheme.primaryContainer));
  }

  /// Section Widget
  Widget _buildNeverHungryAgain() {
    return CustomElevatedButton(
        height: 50.v,
        text: "msg_never_hungry_again".tr,
        margin: EdgeInsets.only(left: 23.h, right: 51.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.bodyLarge17,
        onPressed: () {
          onTapNeverHungryAgain();
        });
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapImgVectorSeven() {
    Get.toNamed(
      AppRoutes.androidLargeOneScreen,
    );
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapNeverHungryAgain() async {
    try {
      if (controller.confirmpasswordController.text !=
          controller.passwordController.text) {
        throw FirebaseAuthException(code: 'mismatched-password');
      }
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: controller.emailController.text,
              password: controller.passwordController.text)
          .then((value) {
        print("Created new account");
        Get.toNamed(
          AppRoutes.mainHomePageContainer1Screen,
        );
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        showToast(message: 'The email address is already in use');
      } else if (e.code == 'mismatched-password') {
        showToast(
            message:
                'The passwords dont match. Please enter the same password.');
      } else {
        showToast(message: 'An error occured: ${e.code}');
      }
    }
    /*.onError((error, stackTrace) {
      print("Error ${error.toString()}");
    });*/
  }
}
