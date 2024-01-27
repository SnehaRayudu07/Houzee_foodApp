import '../controller/restaurant_page_controller.dart';
import '../models/menulist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';

// ignore: must_be_immutable
class MenulistItemWidget extends StatelessWidget {
  MenulistItemWidget(
    this.menulistItemModelObj, {
    Key? key,
    this.onTapQuantity,
  }) : super(
          key: key,
        );

  MenulistItemModel menulistItemModelObj;

  var controller = Get.find<RestaurantPageController>();

  VoidCallback? onTapQuantity;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 90.v,
        width: 363.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(right: 32.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 106.h,
                  vertical: 5.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        menulistItemModelObj.dishName!.value,
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Obx(
                        () => Text(
                          menulistItemModelObj.dishPrice!.value,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Opacity(
                opacity: 0.8,
                child: GestureDetector(
                  onTap: () {
                    onTapQuantity!.call();
                  },
                  child: Container(
                    height: 34.v,
                    width: 107.h,
                    margin: EdgeInsets.only(top: 16.v),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: EdgeInsets.only(left: 1.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 4.h,
                              vertical: 2.v,
                            ),
                            decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder18,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 18.v,
                                  width: 41.h,
                                  margin: EdgeInsets.symmetric(vertical: 4.v),
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 13.h),
                                          child: Obx(
                                            () => Text(
                                              menulistItemModelObj
                                                  .quantity!.value,
                                              style: CustomTextStyles
                                                  .bodyMediumPrimaryContainer,
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                        height: 17.v,
                                        width: 41.h,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCarbonSubtract,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          alignment: Alignment.topLeft,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
