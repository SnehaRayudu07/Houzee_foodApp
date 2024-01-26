import 'controller/cart_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

class CartPageScreen extends GetWidget<CartPageController> {
  const CartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 30.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: CustomIconButton(
                              height: 23.v,
                              width: 30.h,
                              onTap: () {
                                onTapBtnCrosscart();
                              },
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCloseBlack90001))),
                      SizedBox(height: 43.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_your_shopping_cart".tr,
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 61.v),
                      _buildOrderCart(),
                      SizedBox(height: 12.v),
                      Divider(
                          color: theme.colorScheme.onError,
                          indent: 25.h,
                          endIndent: 58.h),
                      SizedBox(height: 17.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 133.h,
                              margin: EdgeInsets.only(right: 69.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_purchase_total2".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff000000),
                                    TextSpan(
                                        text: "\n ".tr,
                                        style: CustomTextStyles
                                            .bodyMediumfff69235),
                                    // TextSpan(
                                    //     text:
                                    //         "                \n            \n \n\n"
                                    //             .tr,
                                    //     style: CustomTextStyles
                                    //         .bodyMediumff000000),
                                    // TextSpan(
                                    //     text: "\n ".tr,
                                    //     style:
                                    //         CustomTextStyles.bodyMediumffffffff)
                                  ]),
                                  textAlign: TextAlign.right))),
                      // SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 45.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 3.v, bottom: 1.v),
                                        child: Text("lbl_voucher".tr,
                                            style: CustomTextStyles
                                                .bodyMediumBlack90001)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 29.h),
                                        child: CustomTextFormField(
                                            width: 75.h,
                                            controller: controller
                                                .voucherPlaceholderController,
                                            hintText: "lbl_enter_here".tr,
                                            hintStyle: CustomTextStyles
                                                .bodyMediumRobotoGray40001,
                                            textInputAction:
                                                TextInputAction.done,
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 5.h,
                                                    vertical: 6.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlinePrimaryTL2,
                                            fillColor: theme
                                                .colorScheme.primaryContainer))
                                  ]))),
                      SizedBox(height: 21.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 68.h),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "lbl_sub_total".tr,
                                        style: CustomTextStyles
                                            .bodyMediumff000000),
                                    TextSpan(
                                        text: "lbl_tax".tr,
                                        style:
                                            CustomTextStyles.bodySmallff000000),
                                    TextSpan(
                                        text: "lbl_9000".tr,
                                        style:
                                            CustomTextStyles.bodyMediumff000000)
                                  ]),
                                  textAlign: TextAlign.left))),
                      SizedBox(height: 55.v),
                      Container(
                          height: 15.v,
                          width: 340.h,
                          margin: EdgeInsets.only(left: 21.h),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(6.h)))),
                      SizedBox(height: 46.v),
                      GestureDetector(
                          onTap: () {
                            onTapThirtyOne();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrow1,
                                    height: 1.v,
                                    width: 24.h,
                                    margin:
                                        EdgeInsets.only(top: 9.v, bottom: 8.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 26.h),
                                    child: Text("msg_continue_shopping".tr,
                                        style:
                                            CustomTextStyles.bodyMediumGray500))
                              ]))),
                      SizedBox(height: 48.v),
                      CustomElevatedButton(
                          height: 52.v,
                          width: 108.h,
                          text: "lbl_checkout".tr,
                          margin: EdgeInsets.only(left: 136.h),
                          buttonStyle: CustomButtonStyles.outlineBlackTL26,
                          onPressed: () {
                            ToCheckOut();
                          }),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildOrderCart() {
    return SizedBox(
        height: 227.v,
        width: 385.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 146.h, right: 41.h, bottom: 17.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 23.v,
                              width: 24.h,
                              decoration:
                                  BoxDecoration(color: appTheme.gray200)),
                          CustomImageView(
                              imagePath: ImageConstant.imgIconmonstrXMark3,
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(top: 5.v, bottom: 12.v))
                        ]),
                    SizedBox(height: 108.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 23.v,
                              width: 24.h,
                              decoration:
                                  BoxDecoration(color: appTheme.gray300)),
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgIconmonstrXMark3Red700,
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(top: 3.v, bottom: 14.v))
                        ])
                  ]))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 14.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgImg201805151830300174x78,
                                  height: 74.v,
                                  width: 78.h,
                                  radius: BorderRadius.circular(39.h)),
                              SizedBox(height: 47.v),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgImg201805151633150176x79,
                                  height: 76.v,
                                  width: 79.h,
                                  radius: BorderRadius.circular(39.h))
                            ])),
                        Padding(
                            padding: EdgeInsets.only(
                                top: 30.v, right: 49.h, bottom: 8.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_chicken".tr,
                                          style: theme.textTheme.bodySmall)),
                                  SizedBox(
                                      width: 174.h,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 8.v),
                                                child: Text("msg_1".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallRoboto)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 7.v),
                                                child: Text("lbl_20002".tr,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ])),
                                  SizedBox(height: 84.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Text("lbl_mushroom".tr,
                                          style: theme.textTheme.bodySmall)),
                                  // SizedBox(height: 5.v),
                                  SizedBox(
                                      width: 173.h,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10.v),
                                                child: Text("msg_5".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallRoboto)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 10.v),
                                                child: Text("lbl_5700".tr,
                                                    style: theme
                                                        .textTheme.bodySmall))
                                          ]))
                                ]))
                      ])))
        ]));
  }

  /// Navigates to the restaurantPageScreen when the action is triggered.
  onTapBtnCrosscart() {
    Get.toNamed(
      AppRoutes.restaurantPageScreen,
    );
  }

  /// Navigates to the restaurantPageScreen when the action is triggered.
  onTapThirtyOne() {
    Get.toNamed(
      AppRoutes.restaurantPageScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  ToCheckOut() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
