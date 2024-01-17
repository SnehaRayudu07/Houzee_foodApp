//import 'package:firebase_auth/firebase_auth.dart';

import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  get data => null;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 28.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 31.v,
                          width: 23.h,
                          onTap: () {
                            onTapBtnIconButton();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFrame35)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("lbl_profile".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 15.v),
                      Divider(indent: 3.h, endIndent: 40.h),
                      SizedBox(height: 65.v),
                      _buildSubscriptionRow(),
                      SizedBox(height: 26.v),
                      _buildAddressStack(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  Widget _buildSubscriptionRow() {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 22.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle77173x186,
                  height: 173.v,
                  width: 186.h,
                  radius: BorderRadius.circular(94.h),
                  margin: EdgeInsets.only(bottom: 18.v)),
              Padding(
                  padding: EdgeInsets.only(top: 43.v),
                  child: Column(children: [
                    SizedBox(
                        width: 72.h,
                        child: Text('${data['username']}'.tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineLarge)),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                        height: 48.v,
                        width: 102.h,
                        text: "lbl_subscription".tr,
                        buttonStyle: CustomButtonStyles.outlineBlackTL26,
                        onPressed: () {
                          onTapSubscription();
                        })
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildAddressStack() {
    return SizedBox(
        height: 285.v,
        width: 358.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 77.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildPaymentRow(
                            paymentText: "lbl_address".tr,
                            bankNameText: "msg_42_street_gate".tr),
                        CustomImageView(
                            imagePath: ImageConstant.imgEdit1,
                            height: 16.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                                left: 23.h, top: 41.v, bottom: 53.v))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildPaymentRow(
                            paymentText: "lbl_payment".tr,
                            bankNameText: "lbl_bank_name".tr),
                        CustomImageView(
                            imagePath: ImageConstant.imgEdit1,
                            height: 16.v,
                            width: 15.h,
                            margin: EdgeInsets.only(
                                left: 16.h, top: 5.v, bottom: 26.v))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 10.h),
                            child: Row(children: [
                              Expanded(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7.h, vertical: 10.v),
                                      decoration: AppDecoration.outlineGreen
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 3.v),
                                                child: Text("lbl_email2".tr,
                                                    style: CustomTextStyles
                                                        .bodyLargeBlack90001_1)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 24.h),
                                                child: Text('${data['email']}',
                                                    style: CustomTextStyles
                                                        .bodyLargeBlack90001_1))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEdit1,
                                  height: 16.v,
                                  width: 15.h,
                                  margin: EdgeInsets.only(
                                      left: 16.h, top: 17.v, bottom: 14.v))
                            ])),
                        SizedBox(height: 234.v),
                        Divider(color: appTheme.blueGray5001, endIndent: 38.h)
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildPaymentRow({
    required String paymentText,
    required String bankNameText,
  }) {
    return Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
            decoration: AppDecoration.outlineGreen
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(paymentText,
                          style: CustomTextStyles.bodyLargeBlack90001_1
                              .copyWith(color: appTheme.black90001))),
                  Padding(
                      padding: EdgeInsets.only(right: 52.h, bottom: 3.v),
                      child: Text(bankNameText,
                          style: CustomTextStyles.bodyLargeBlack90001_1
                              .copyWith(color: appTheme.black90001)))
                ])));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the mealPlansScreen when the action is triggered.
  onTapSubscription() {
    Get.toNamed(
      AppRoutes.mealPlansScreen,
    );
  }
}
