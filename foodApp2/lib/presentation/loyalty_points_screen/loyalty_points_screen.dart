import 'controller/loyalty_points_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class LoyaltyPointsScreen extends GetWidget<LoyaltyPointsController> {
  const LoyaltyPointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.green50.withOpacity(0.9),
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 47.h, vertical: 27.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("lbl_loyalty_points".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 15.v),
                      Divider(color: theme.colorScheme.onError, indent: 1.h),
                      SizedBox(height: 45.v),
                      Padding(
                          padding: EdgeInsets.only(left: 10.h, right: 40.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorPrimary168x112,
                                height: 168.v,
                                width: 112.h),
                            Container(
                                width: 81.h,
                                margin: EdgeInsets.only(
                                    left: 73.h, top: 43.v, bottom: 45.v),
                                child: Text("lbl_sanita_queen".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.headlineLarge))
                          ])),
                      SizedBox(height: 38.v),
                      Padding(
                          padding: EdgeInsets.only(left: 87.h),
                          child: Text("lbl_509_points".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 54.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: 263.h,
                              margin: EdgeInsets.only(left: 30.h, right: 24.h),
                              child: Text("msg_convert_points_to".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style:
                                      CustomTextStyles.bodyLargeBlack90001_1))),
                      Spacer(),
                      SizedBox(height: 90.v),
                      CustomElevatedButton(
                          height: 52.v,
                          width: 108.h,
                          text: "lbl_convert".tr,
                          margin: EdgeInsets.only(right: 94.h),
                          buttonStyle: CustomButtonStyles.outlineBlackTL26,
                          alignment: Alignment.centerRight)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCloseBlack90001,
            margin: EdgeInsets.fromLTRB(28.h, 16.v, 363.h, 16.v),
            onTap: () {
              onTapIconButton();
            }));
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
