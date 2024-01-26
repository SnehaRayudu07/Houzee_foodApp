import '../restaurant_page_screen/widgets/menulist_item_widget.dart';
import 'controller/restaurant_page_controller.dart';
import 'models/menulist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:houzee/core/app_export.dart';
import 'package:houzee/widgets/custom_elevated_button.dart';
import 'package:houzee/widgets/custom_rating_bar.dart';

class RestaurantPageScreen extends GetWidget<RestaurantPageController> {
  const RestaurantPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 0.v),
                child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 400.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildWidgetStack(),
                                _buildDetailsRestHome()
                              ])),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 26.h, right: 96.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle77,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin:
                                    EdgeInsets.only(top: 12.v, bottom: 1.v)),
                            Expanded(
                                child: Container(
                                    margin: EdgeInsets.only(left: 34.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 51.h, vertical: 6.v),
                                    decoration: AppDecoration.outlineBlack90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder18),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSearch,
                                              height: 18.v,
                                              width: 17.h,
                                              margin: EdgeInsets.only(
                                                  top: 3.v, bottom: 2.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.h, bottom: 1.v),
                                              child: Text("lbl_search_menu".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeBlack90001))
                                        ])))
                          ])),
                      SizedBox(height: 21.v),
                      _buildCart(),
                      SizedBox(height: 15.v),
                      _buildMenuList()
                    ])
                //)//.
                )));
  }

  /// Section Widget
  Widget _buildWidgetStack() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 417.v,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topLeft, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgImage2417x412,
                  height: 417.v,
                  width: 415.h,
                  alignment: Alignment.center),
              CustomImageView(
                  imagePath: ImageConstant.imgFrame36,
                  height: 36.v,
                  width: 48.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 29.h, top: 25.v),
                  onTap: () {
                    onTapImgImage();
                  })
            ])));
  }

  /// Section Widget
  Widget _buildDetailsRestHome() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 4.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgRectangle11),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 15.v, bottom: 8.v),
                                    child: Text("lbl_cook_name".tr,
                                        style: theme.textTheme.titleLarge)),
                                Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.h, vertical: 11.v),
                                    decoration: AppDecoration.outlineBlack
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_4_5".tr,
                                              style: CustomTextStyles
                                                  .titleLargeGray70001),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 33.h,
                                                  top: 2.v,
                                                  bottom: 6.v),
                                              child: CustomRatingBar(
                                                  initialRating: 1))
                                        ]))
                              ]))),
                  SizedBox(height: 15.v),
                  Container(
                      width: 330.h,
                      margin: EdgeInsets.only(right: 81.h),
                      child: Text("msg_our_fried_rice_is".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMedium15)),
                  SizedBox(height: 10.v)
                ])));
  }

  /// Section Widget
  Widget _buildCart() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 32.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v, bottom: 5.v),
                  child: Text("lbl_our_best".tr,
                      style: CustomTextStyles.titleLargeGray700)),
              CustomElevatedButton(
                  height: 33.v,
                  width: 87.h,
                  text: "lbl_cart".tr,
                  buttonStyle: CustomButtonStyles.fillGreenA,
                  buttonTextStyle: CustomTextStyles.bodyMediumBlack9000113,
                  onPressed: () {
                    onTapCart();
                  })
            ]));
  }

  /// Section Widget
  Widget _buildMenuList() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, right: 20.h),
            child: Obx(() => ListView.separated(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 8.v);
                },
                itemCount: controller
                    .restaurantPageModelObj.value.menulistItemList.value.length,
                itemBuilder: (context, index) {
                  MenulistItemModel model = controller.restaurantPageModelObj
                      .value.menulistItemList.value[index];
                  return MenulistItemWidget(model, onTapQuantity: () {
                    onTapQuantity();
                  });
                }))));
  }

  /// Navigates to the cartPageScreen when the action is triggered.
  onTapQuantity() {
    Get.toNamed(AppRoutes.cartPageScreen);
  }

  /// Navigates to the mainHomePageContainer1Screen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }

  /// Navigates to the cartPageScreen when the action is triggered.
  onTapCart() {
    Get.toNamed(
      AppRoutes.cartPageScreen,
    );
  }
}
