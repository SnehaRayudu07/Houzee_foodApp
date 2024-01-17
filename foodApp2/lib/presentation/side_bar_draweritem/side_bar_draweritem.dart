import 'controller/side_bar_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SideBarDraweritem extends StatelessWidget {
  SideBarDraweritem(this.controller, {Key? key}) : super(key: key);

  SideBarController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: 256.h,
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 163.v),
            decoration: AppDecoration.fillPrimary,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text("lbl_sanita_queen2".tr,
                      style: CustomTextStyles.titleLargePrimaryContainer)),
              SizedBox(height: 47.v),
              GestureDetector(
                  onTap: () {
                    onTapTwenty();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgUser1,
                            height: 22.v,
                            width: 20.h),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Text("lbl_profile".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))),
              SizedBox(height: 39.v),
              GestureDetector(
                  onTap: () {
                    onTapFrameThree();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMenu,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 24.h, top: 3.v),
                            child: Text("lbl_home".tr,
                                style: theme.textTheme.bodyLarge))
                      ]))),
              SizedBox(height: 41.v),
              GestureDetector(
                  onTap: () {
                    onTapFrameFour();
                  },
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMedal1,
                        height: 28.v,
                        width: 27.h),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 24.h, top: 4.v, bottom: 2.v),
                        child: Text("lbl_chef".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
              Spacer(flex: 45),
              GestureDetector(
                  onTap: () {
                    onTapFrameFive();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 32.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgCreditCard2,
                            height: 27.v,
                            width: 25.h),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 25.h, top: 5.v, bottom: 2.v),
                            child: Text("lbl_subscription".tr,
                                style: CustomTextStyles.bodyLargeAclonica))
                      ]))),
              SizedBox(height: 46.v),
              GestureDetector(
                  onTap: () {
                    onTapFrameSix();
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 54.h),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgCreditCard3,
                                height: 27.v,
                                width: 25.h),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 25.h, bottom: 5.v),
                                child: Text("lbl_loyalty_points".tr,
                                    style: theme.textTheme.bodyLarge))
                          ]))),
              Spacer(flex: 54)
            ])));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTwenty() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapFrameThree() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the cooksMainPageScreen when the action is triggered.
  onTapFrameFour() {
    Get.toNamed(
      AppRoutes.cooksMainPageScreen,
    );
  }

  /// Navigates to the mealPlansScreen when the action is triggered.
  onTapFrameFive() {
    Get.toNamed(
      AppRoutes.mealPlansScreen,
    );
  }

  /// Navigates to the loyaltyPointsScreen when the action is triggered.
  onTapFrameSix() {
    Get.toNamed(
      AppRoutes.loyaltyPointsScreen,
    );
  }
}
