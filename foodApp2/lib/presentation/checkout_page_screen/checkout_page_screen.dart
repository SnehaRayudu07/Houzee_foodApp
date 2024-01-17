import 'controller/checkout_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/validation_functions.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_icon_button.dart';
import 'package:houzee/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CheckoutPageScreen extends GetWidget<CheckoutPageController> {
  CheckoutPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 27.h, vertical: 33.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                      height: 20.v,
                                      width: 22.h,
                                      onTap: () {
                                        onTapBtnCrossCheckout();
                                      },
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgCloseBlack90001)),
                                  SizedBox(height: 43.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text("lbl_checkout_page".tr,
                                          style:
                                              theme.textTheme.headlineLarge)),
                                  SizedBox(height: 12.v),
                                  Divider(indent: 2.h, endIndent: 39.h),
                                  SizedBox(height: 27.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("msg_your_order_details".tr,
                                          style: theme.textTheme.bodySmall)),
                                  SizedBox(height: 46.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 20.h),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.v),
                                          decoration: AppDecoration
                                              .fillPrimaryContainer
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder6),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    decoration: AppDecoration
                                                        .outlineBlack900012
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder6),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SizedBox(
                                                              height: 128.v,
                                                              width: 315.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: Padding(
                                                                            padding: EdgeInsets.only(left: 49.h, top: 31.v),
                                                                            child: Row(children: [
                                                                              Container(
                                                                                  width: 96.h,
                                                                                  margin: EdgeInsets.only(bottom: 1.v),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "lbl_pasta_fritata".tr, style: CustomTextStyles.bodyMediumRobotoff000000),
                                                                                        TextSpan(text: " "),
                                                                                        TextSpan(text: "lbl_x2".tr, style: CustomTextStyles.bodyMediumRobotoffc4c4c4),
                                                                                        TextSpan(text: "            ".tr),
                                                                                        TextSpan(text: "lbl_beef".tr, style: CustomTextStyles.bodyMediumRobotoff000000),
                                                                                        TextSpan(text: "lbl_x4".tr, style: CustomTextStyles.bodyMediumRobotoffc3c2b8)
                                                                                      ]),
                                                                                      textAlign: TextAlign.center)),
                                                                              Padding(
                                                                                  padding: EdgeInsets.only(left: 30.h, top: 2.v),
                                                                                  child: Column(children: [
                                                                                    RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_5075".tr, style: CustomTextStyles.bodySmallRobotoff000000),
                                                                                          TextSpan(text: "lbl_inc_tax".tr, style: CustomTextStyles.robotoff000000)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left),
                                                                                    SizedBox(height: 2.v),
                                                                                    RichText(
                                                                                        text: TextSpan(children: [
                                                                                          TextSpan(text: "lbl_4532".tr, style: CustomTextStyles.bodySmallRobotoff000000),
                                                                                          TextSpan(text: "lbl_inc_tax".tr, style: CustomTextStyles.robotoff000000)
                                                                                        ]),
                                                                                        textAlign: TextAlign.left)
                                                                                  ]))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: SizedBox(
                                                                            height: 128.v,
                                                                            width: 315.h,
                                                                            child: Stack(alignment: Alignment.topCenter, children: [
                                                                              Align(alignment: Alignment.center, child: SizedBox(height: 128.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.indigo200))),
                                                                              Align(
                                                                                  alignment: Alignment.topCenter,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(top: 1.v),
                                                                                      child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                        Padding(
                                                                                            padding: EdgeInsets.only(left: 54.h),
                                                                                            child: Row(children: [
                                                                                              Text("lbl_product_name".tr, style: CustomTextStyles.bodyMediumBlack9000113),
                                                                                              Padding(padding: EdgeInsets.only(left: 48.h), child: Text("lbl_total".tr, style: CustomTextStyles.bodyMediumBlack9000113))
                                                                                            ])),
                                                                                        SizedBox(height: 6.v),
                                                                                        Divider(color: appTheme.indigo200)
                                                                                      ])))
                                                                            ])))
                                                                  ])),
                                                          SizedBox(height: 1.v),
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          74.h,
                                                                      vertical:
                                                                          1.v),
                                                              decoration: AppDecoration
                                                                  .fillPrimary
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderBL8),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 24
                                                                                .h,
                                                                            bottom: 4
                                                                                .v),
                                                                        child: Text(
                                                                            "lbl_total"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.titleSmall)),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            top:
                                                                                3.v,
                                                                            bottom: 2.v),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "lbl_9607".tr, style: CustomTextStyles.labelLargeffffffff),
                                                                              TextSpan(text: "lbl_inc_tax".tr, style: CustomTextStyles.robotoffffffff)
                                                                            ]),
                                                                            textAlign: TextAlign.left))
                                                                  ]))
                                                        ])),
                                                SizedBox(height: 34.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 104.h),
                                                    child: Text(
                                                        "msg_shipping_details"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodySmall)),
                                                SizedBox(height: 10.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 4.h, right: 3.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          _buildHouseNo(),
                                                          _buildName()
                                                        ])),
                                                SizedBox(height: 10.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 6.h, right: 4.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          _buildCity(),
                                                          _buildPhone()
                                                        ])),
                                                SizedBox(height: 7.v),
                                                _buildSpecialNotes(),
                                                SizedBox(height: 6.v)
                                              ]))),
                                  SizedBox(height: 69.v),
                                  Divider(
                                      color: appTheme.blueGray5001,
                                      indent: 2.h,
                                      endIndent: 39.h),
                                  SizedBox(height: 29.v),
                                  _buildPayNow(),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildHouseNo() {
    return Padding(
        padding: EdgeInsets.only(bottom: 2.v),
        child: CustomTextFormField(
            width: 149.h,
            controller: controller.houseNoController,
            hintText: "lbl_house_no".tr,
            hintStyle: CustomTextStyles.bodySmallRobotoGray400,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
            fillColor: appTheme.gray400.withOpacity(0.02)));
  }

  /// Section Widget
  Widget _buildName() {
    return CustomTextFormField(
        width: 148.h,
        controller: controller.nameController,
        hintText: "lbl_street_name".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray400,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildCity() {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: CustomTextFormField(
            width: 149.h,
            controller: controller.cityController,
            hintText: "lbl_city".tr,
            hintStyle: CustomTextStyles.bodySmallRobotoGray400,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
            borderDecoration: TextFormFieldStyleHelper.outlineBlack,
            fillColor: appTheme.gray400.withOpacity(0.02)));
  }

  /// Section Widget
  Widget _buildPhone() {
    return CustomTextFormField(
        width: 148.h,
        controller: controller.phoneController,
        hintText: "lbl_phone".tr,
        hintStyle: CustomTextStyles.bodyMediumRobotoGray400,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.all(8.h),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildSpecialNotes() {
    return CustomTextFormField(
        controller: controller.specialNotesController,
        hintText: "msg_special_notes_for".tr,
        hintStyle: CustomTextStyles.bodySmallRobotoGray400,
        textInputAction: TextInputAction.done,
        maxLines: 6,
        contentPadding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlack,
        fillColor: appTheme.gray400.withOpacity(0.02));
  }

  /// Section Widget
  Widget _buildPayNow() {
    return CustomElevatedButton(
        height: 52.v,
        width: 108.h,
        text: "lbl_pay_now".tr,
        buttonStyle: CustomButtonStyles.outlineBlackTL26,
        onPressed: () {
          onTapPayNow();
        },
        alignment: Alignment.center);
  }

  /// Navigates to the cartPageScreen when the action is triggered.
  onTapBtnCrossCheckout() {
    Get.toNamed(
      AppRoutes.cartPageScreen,
    );
  }

  /// Navigates to the paymentMethodsScreen when the action is triggered.
  onTapPayNow() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
