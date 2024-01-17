import 'controller/meal_plans_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

class MealPlansScreen extends GetWidget<MealPlansController> {
  const MealPlansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 8.v),
                child: Column(children: [
                  Text("lbl_partner_plans".tr,
                      style: theme.textTheme.displaySmall),
                  SizedBox(height: 63.v),
                  _buildBuyNow3200(),
                  SizedBox(height: 62.v),
                  _buildBuyNow3201(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgCloseBlack9000120x20,
            margin: EdgeInsets.fromLTRB(25.h, 19.v, 363.h, 19.v),
            onTap: () {
              onTapIconButton();
            }));
  }

  /// Section Widget
  Widget _buildPartnerPlans() {
    return CustomElevatedButton(
        width: 78.h,
        text: "lbl_buy_now_3_200".tr,
        buttonTextStyle: CustomTextStyles.bodySmallGreen100,
        onPressed: () {
          onTapPartnerPlans();
        });
  }

  /// Section Widget
  Widget _buildFirstPlan() {
    return CustomTextFormField(
        width: 166.adaptSize,
        controller: controller.firstPlanController,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.outlineBlackTL13,
        fillColor: appTheme.blueGray100);
  }

  /// Section Widget
  Widget _buildSecondPlan() {
    return CustomElevatedButton(
        width: 78.h,
        text: "lbl_buy_now_3_200".tr,
        buttonTextStyle: CustomTextStyles.bodySmallGreen100,
        onPressed: () {
          onTapSecondPlan();
        });
  }

  /// Section Widget
  Widget _buildBuyNow3200() {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 12.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v, right: 18.h),
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
                    _buildPartnerPlans()
                  ]))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(children: [
                    _buildFirstPlan(),
                    SizedBox(height: 11.v),
                    _buildSecondPlan()
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildThirdPlan() {
    return CustomElevatedButton(
        width: 78.h,
        text: "lbl_buy_now_3_200".tr,
        buttonTextStyle: CustomTextStyles.bodySmallGreen100,
        onPressed: () {
          onTapThirdPlan();
        });
  }

  /// Section Widget
  Widget _buildFourthPlan() {
    return CustomElevatedButton(
        width: 76.h,
        text: "lbl_buy_now_3_200".tr,
        buttonTextStyle: CustomTextStyles.bodySmallGreen100,
        onPressed: () {
          onTapFourthPlan();
        });
  }

  /// Section Widget
  Widget _buildBuyNow3201() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 12.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(right: 21.h),
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 6.v),
                            decoration: AppDecoration.outlineBlack900014
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder13),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 23.v),
                                  SizedBox(
                                      width: 132.h,
                                      child: Text(
                                          "msg_plan_3_3_food_deliveries2".tr,
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumBlack9000114))
                                ])),
                        SizedBox(height: 12.v),
                        _buildThirdPlan()
                      ]))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 6.v),
                            decoration: AppDecoration.outlineBlack900014
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder13),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 23.v),
                                  SizedBox(
                                      width: 132.h,
                                      child: Text(
                                          "msg_plan_4_3_food_deliveries2".tr,
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumBlack9000114))
                                ])),
                        SizedBox(height: 12.v),
                        _buildFourthPlan()
                      ])))
            ])));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapPartnerPlans() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapSecondPlan() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapThirdPlan() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapFourthPlan() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
