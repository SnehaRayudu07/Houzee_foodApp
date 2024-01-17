import 'controller/cook_plan_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

class CookPlanScreen extends GetWidget<CookPlanController> {
  const CookPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 76.h),
                          child: Text("lbl_cook_partner".tr,
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 64.v),
                      _buildEditTextRow(),
                      SizedBox(height: 59.v),
                      _buildBuyNowRow(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonTwo(
            imagePath: ImageConstant.imgClosePrimarycontainer,
            margin: EdgeInsets.fromLTRB(29.h, 18.v, 363.h, 18.v)));
  }

  /// Section Widget
  Widget _buildEditTextRow() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 14.h, bottom: 3.v),
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 6.v),
                        decoration: AppDecoration.outlineBlack900014.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 23.v),
                          SizedBox(
                              width: 132.h,
                              child: Text("msg_plan_1_3_food_deliveries2".tr,
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyMediumBlack9000114))
                        ])),
                    SizedBox(height: 10.v),
                    GestureDetector(
                        onTap: () {
                          onTapSeventySix();
                        },
                        child: Container(
                            margin: EdgeInsets.only(left: 46.h, right: 42.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 3.v),
                            decoration: AppDecoration.outlineBlack900015
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 43.h,
                                      child: Text("lbl_buy_now_3_200".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodySmallCalibriPrimaryContainer))
                                ])))
                  ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Column(children: [
                    CustomTextFormField(
                        width: 166.adaptSize,
                        controller: controller.editTextController,
                        textInputAction: TextInputAction.done,
                        borderDecoration:
                            TextFormFieldStyleHelper.outlineBlackTL13,
                        fillColor: appTheme.blueGray100),
                    SizedBox(height: 13.v),
                    GestureDetector(
                        onTap: () {
                          onTapSeventySeven();
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 44.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 17.h, vertical: 3.v),
                            decoration: AppDecoration.outlineBlack900015
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder6),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4.v),
                                  SizedBox(
                                      width: 43.h,
                                      child: Text("lbl_buy_now_3_200".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodySmallCalibriPrimaryContainer))
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBuyNowRow() {
    return Padding(
        padding: EdgeInsets.only(right: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 17.h, bottom: 3.v),
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.h, vertical: 6.v),
                        decoration: AppDecoration.outlineBlack900014.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 23.v),
                          SizedBox(
                              width: 132.h,
                              child: Text("msg_plan_3_3_food_deliveries3".tr,
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyMediumBlack9000114))
                        ])),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                        width: 78.h,
                        text: "lbl_buy_now_3_200".tr,
                        buttonTextStyle:
                            CustomTextStyles.bodySmallCalibriPrimaryContainer,
                        onPressed: () {
                          onTapBuyNow3200();
                        })
                  ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 6.v),
                        decoration: AppDecoration.outlineBlack900014.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder13),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          SizedBox(height: 23.v),
                          SizedBox(
                              width: 132.h,
                              child: Text("msg_plan_4_3_food_deliveries3".tr,
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyMediumBlack9000114))
                        ])),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(
                        width: 76.h,
                        text: "lbl_buy_now_3_200".tr,
                        buttonTextStyle:
                            CustomTextStyles.bodySmallCalibriPrimaryContainer,
                        onPressed: () {
                          onTapBuyNow3201();
                        })
                  ])))
        ]));
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapSeventySix() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapSeventySeven() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapBuyNow3200() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapBuyNow3201() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
