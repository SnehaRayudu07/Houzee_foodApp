import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        //begin: Alignment(0.5, 0),
                        //end: Alignment(0.5, 1),
                        colors: [
                      appTheme.lightGreenA70033,
                      appTheme.greenA70033
                    ])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 250.v),
                      SizedBox(
                          height: 200.v,
                          width: 200.h,
                          child:                           
                            CustomImageView(
                                alignment: Alignment.center,
                                imagePath: ImageConstant.imgRectangle129,
                                height: 200.v,
                                width: 200.h,
                                radius: BorderRadius.circular(13.h),
                               ),
                            // Align(
                            //     alignment: Alignment.topCenter,
                            //     child: Padding(
                            //         padding: EdgeInsets.only(
                            //             left: 78.h, top: 57.v, right: 81.h),
                            //         child: Column(
                            //             mainAxisSize: MainAxisSize.min,
                            //             children: [
                            //               CustomImageView(
                            //                   imagePath:
                            //                       ImageConstant.imgRectangle129,
                            //                   height: 183.v,
                            //                   width: 245.h),
                            //               SizedBox(height: 71.v),
                            //               CustomElevatedButton(
                            //                   height: 53.v,
                            //                   text: "lbl_get_started".tr,
                            //                   rightIcon: Container(
                            //                       margin: EdgeInsets.only(
                            //                           left: 15.h),
                            //                       decoration: BoxDecoration(
                            //                           borderRadius:
                            //                               BorderRadius.circular(
                            //                                   1.h)),
                            //                       child: CustomImageView(
                            //                           imagePath:
                            //                               ImageConstant.imgUser,
                            //                           height: 23.v,
                            //                           width: 21.h)),
                            //                   buttonStyle: CustomButtonStyles
                            //                       .fillSecondaryContainer,
                            //                   buttonTextStyle: CustomTextStyles
                            //                       .headlineSmallBluegray10001,
                            //                   onPressed: () {
                            //                     onTapGetStarted();
                            //                   })
                            //             ])))
                          )
                    ])))));
  }

  /// Navigates to the androidLargeOneScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.androidLargeOneScreen,
    );
  }
}
