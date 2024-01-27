import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
import 'package:houzee/core/utils/image_constant.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgFrame16,
      activeIcon: ImageConstant.imgFrame16,
      type: BottomBarEnum.Frame16,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup124Primarycontainer,
      activeIcon: ImageConstant.imgGroup124Primarycontainer,
      type: BottomBarEnum.Group124primarycontainer,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser1,
      activeIcon: ImageConstant.imgUser1,
      type: BottomBarEnum.User1,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10.h),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          // showSelectedLabels: false,
          // showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 30.v,
                width: 30.h,
                color: theme.colorScheme.primaryContainer,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 30.v,
                width: 30.h,
                color: theme.colorScheme.primaryContainer,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            if(index == 0){
              onTapBar1();
            }
            if(index == 1){
              onTapBar2();
            }
            if(index == 2){
              onTapBar3();
            }
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}
onTapBar1() {
    Get.toNamed(
      AppRoutes.cooksMainPageScreen,
    );}
onTapBar2() {
    Get.toNamed(
      AppRoutes.mealPlansScreen,
    );}
onTapBar3() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );}




enum BottomBarEnum {
  Frame16,
  Group124primarycontainer,
  User1,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
