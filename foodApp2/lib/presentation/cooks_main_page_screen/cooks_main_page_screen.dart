import 'controller/cooks_main_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_bottom_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class CooksMainPageScreen extends GetWidget<CooksMainPageController> {
  const CooksMainPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: _buildBottomBar(),
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                  child: Form(
                child: Container(
                  child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Container(
                            alignment: Alignment.topCenter,
                            child: _buildRestaurantDetails()),
                        Container(
                            margin: EdgeInsets.only(top: 250),
                            child: _buildDishesDetails()),
                        Container(
                            margin: EdgeInsets.only(top: 450),
                            child: _buildDishesDetails()),
                        Container(
                            margin: EdgeInsets.only(top: 650),
                            child: _buildDishesLast())
                      ]),
                ),
              )),
            )));
  }

  /// Section Widget
  Widget _buildRestaurantDetails() {
    return SizedBox(
        height: 250.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  decoration: AppDecoration.fillPrimary,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame36,
                                      height: 45.v,
                                      width: 39.h,
                                      margin: EdgeInsets.only(bottom: 50.v),
                                      onTap: () {
                                        onTapImgImage();
                                      }),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 9.h, top: 19.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Cooks name".tr,
                                                style: theme
                                                    .textTheme.headlineMedium),
                                            SizedBox(height: 17.v),
                                            Text("lbl_location".tr,
                                                style: CustomTextStyles
                                                    .titleLargeGreen100)
                                          ]))
                                ])),
                        SizedBox(height: 57.v),
                        Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 139.h, vertical: 15.v),
                            decoration: AppDecoration.fillGreen.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL26),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 10.v),
                                  Text("lbl_your_menu".tr,
                                      style: theme.textTheme.titleLarge)
                                ]))
                      ]))),
        ]));
  }

  Widget _buildDishesDetails() {
    return Container(
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 238.h, right: 54.h, bottom: 1.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgBakedJollofRice,
                        height: 121.v,
                        width: 120.h,
                        radius: BorderRadius.circular(45.h)),
                    SizedBox(height: 7.v),
                    Text("lbl_jollof_rice".tr,
                        style: CustomTextStyles.bodyLargeOnPrimary),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        height: 25.v,
                        width: 79.h,
                        text: "lbl_update".tr,
                        buttonTextStyle: CustomTextStyles.bodySmallGreen1008)
                  ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 35.h, right: 258.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgHowToPrepare121x119,
                        height: 121.v,
                        width: 119.h,
                        radius: BorderRadius.circular(45.h)),
                    SizedBox(height: 6.v),
                    Text("lbl_fried_rice".tr,
                        style: CustomTextStyles.bodyLargeOnPrimary),
                    SizedBox(height: 18.v),
                    CustomElevatedButton(
                        height: 25.v,
                        width: 79.h,
                        text: "lbl_update".tr,
                        buttonTextStyle: CustomTextStyles.bodySmallGreen1008)
                  ]))),
        ]));
  }

  Widget _buildDishesLast() {
    return Padding(
        padding: EdgeInsets.only(left: 39.h, right: 69.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHowToPrepare121x119,
                    height: 121.v,
                    width: 119.h,
                    radius: BorderRadius.circular(45.h)),
                SizedBox(height: 6.v),
                Text("lbl_fried_rice".tr,
                    style: CustomTextStyles.bodyLargeOnPrimary),
                SizedBox(height: 18.v),
                CustomElevatedButton(
                    height: 25.v,
                    width: 79.h,
                    text: "lbl_update".tr,
                    buttonTextStyle: CustomTextStyles.bodySmallGreen1008)
              ])),
          Align(
              child: Column(children: [
            CustomElevatedButton(
                height: 25.v,
                width: 50.h,
                margin: EdgeInsets.all(20),
                text: "Add".tr,
                buttonTextStyle: CustomTextStyles.bodySmallAladinGreen100)
          ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
