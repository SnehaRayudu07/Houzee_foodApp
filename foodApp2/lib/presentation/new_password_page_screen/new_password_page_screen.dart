import 'controller/new_password_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPasswordPageScreen extends GetWidget<NewPasswordPageController> {
  NewPasswordPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray100,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 37.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle129,
                                  height: 146.v,
                                  width: 198.h),
                              SizedBox(height: 49.v),
                              SizedBox(
                                  width: 226.h,
                                  child: Text("msg_your_password_must".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodyLargeBlack9000118)),
                              SizedBox(height: 55.v),
                              CustomTextFormField(
                                  width: 277.h,
                                  controller: controller.newpasswordController,
                                  hintText: "msg_enter_new_password".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30.h, vertical: 15.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlinePrimary,
                                  fillColor:
                                      theme.colorScheme.primaryContainer),
                              SizedBox(height: 44.v),
                              CustomTextFormField(
                                  width: 277.h,
                                  controller: controller.newpasswordController1,
                                  hintText: "msg_reconfirm_new_password".tr,
                                  hintStyle: theme.textTheme.bodyMedium!,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 30.h, vertical: 15.v),
                                  borderDecoration:
                                      TextFormFieldStyleHelper.outlinePrimary,
                                  fillColor:
                                      theme.colorScheme.primaryContainer),
                              SizedBox(height: 62.v),
                              CustomElevatedButton(
                                  height: 39.v,
                                  width: 216.h,
                                  text: "lbl_eat_away".tr,
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL19,
                                  buttonTextStyle: CustomTextStyles
                                      .bodyMediumPrimaryContainer14,
                                  onPressed: () {
                                    onTapEatAway();
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapEatAway() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
