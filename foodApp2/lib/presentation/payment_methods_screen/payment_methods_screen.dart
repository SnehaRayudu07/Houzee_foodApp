import 'controller/payment_methods_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_icon_button.dart';

class PaymentMethodsScreen extends GetWidget<PaymentMethodsController> {
  const PaymentMethodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 31.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 22.v,
                          width: 25.h,
                          onTap: () {
                            onTapBtnCrossPayment();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCloseBlack90001)),
                      SizedBox(height: 38.v),
                      Padding(
                          padding: EdgeInsets.only(left: 47.h),
                          child: Text("lbl_payment_methods".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 18.v),
                      Align(
                          alignment: Alignment.center,
                          child: Divider(
                              color: appTheme.black90001,
                              indent: 18.h,
                              endIndent: 25.h)),
                      SizedBox(height: 53.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h, right: 40.h),
                          child: _buildPaymentMethodsRow(
                              vectorImage: ImageConstant.imgTelevision,
                              profileImage: ImageConstant.imgClose)),
                      SizedBox(height: 43.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 2.v,
                              width: 317.h,
                              decoration: BoxDecoration(
                                  color: appTheme.black90001,
                                  borderRadius: BorderRadius.circular(1.h)))),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h, right: 40.h),
                          child: _buildPaymentMethodsRow(
                              vectorImage: ImageConstant.imgVector,
                              profileImage: ImageConstant.imgProfile)),
                      SizedBox(height: 49.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 2.v,
                              width: 317.h,
                              decoration: BoxDecoration(
                                  color: appTheme.black90001,
                                  borderRadius: BorderRadius.circular(1.h)))),
                      SizedBox(height: 49.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h, right: 40.h),
                          child: _buildPaymentMethodsRow(
                              vectorImage: ImageConstant.imgTelevisionPrimary,
                              profileImage: ImageConstant.imgVectorPrimary)),
                      SizedBox(height: 49.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 2.v,
                              width: 317.h,
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(1.h)))),
                      SizedBox(height: 46.v),
                      Padding(
                          padding: EdgeInsets.only(left: 23.h, right: 36.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionPrimary40x72,
                                    height: 40.v,
                                    width: 72.h,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 2.v)),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionPrimary40x70,
                                    height: 45.v,
                                    width: 76.h)
                              ])),
                      SizedBox(height: 46.v),
                      Container(
                          height: 2.v,
                          width: 317.h,
                          margin: EdgeInsets.only(left: 13.h),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary,
                              borderRadius: BorderRadius.circular(1.h))),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Common widget
  Widget _buildPaymentMethodsRow({
    required String vectorImage,
    required String profileImage,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(imagePath: vectorImage, height: 40.v, width: 70.h),
      CustomImageView(imagePath: profileImage, height: 40.v, width: 70.h)
    ]);
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapBtnCrossPayment() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
