import '../side_bar_draweritem/controller/side_bar_controller.dart';
import '../side_bar_draweritem/side_bar_draweritem.dart';
import 'controller/main_home_page_container_controller.dart';
import 'models/main_home_page_container_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/core/app_export.dart';
//import 'package:houzee/widgets/app_bar/appbar_leading_image.dart';
//import 'package:houzee/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:houzee/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class MainHomePageContainerPage extends StatelessWidget {
  MainHomePageContainerPage({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  MainHomePageContainerController controller = Get.put(
      MainHomePageContainerController(MainHomePageContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            backgroundColor: appTheme.green5001,
            drawer: SideBarDraweritem(SideBarController()),
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 170.v,
                          width: double.maxFinite,
                          //child: Stack(alignment: Alignment.topLeft, children: [
                           child: _buildHomeSection(),),
                           SizedBox(height: 10.h,),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapstRest();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 48.h, right: 53.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 196.v,
                                                  width: 311.h,
                                                  child: Stack(
                                                      alignment:                                                         Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:ImageConstant.imgSumptous1,                                                                                                                              
                                                            height: 196.v,
                                                            width: 311.h,
                                                            radius: BorderRadius.circular(26.h),                                                               
                                                            alignment: Alignment.center),                                                               
                                                        CustomImageView(
                                                            imagePath: ImageConstant.imgImage151x105,                                                               
                                                            height: 51.v,
                                                            width: 105.h,
                                                            radius: BorderRadius.circular(25.h),                                                               
                                                            alignment: Alignment.bottomRight,                                                              
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 12.h))                                                                      
                                                      ])),
                                              SizedBox(height: 14.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text(
                                                      "rest_name_1".tr,
                                                      style: theme.textTheme
                                                          .titleLarge)),
                                              SizedBox(height: 6.v),
                                              Container(
                                                  decoration: AppDecoration
                                                      .outlineBlack900011,
                                                  child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                            width: 31.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:ImageConstant.imgStar1,                                                                             
                                                                      height:12.v,                                                                         
                                                                      width:11.h,                                                                        
                                                                      margin: EdgeInsets.only(
                                                                          top: 2.v,                                                                            
                                                                          bottom:1.v)),                                                                             
                                                                  Text("lbl_4_9".tr,style: CustomTextStyles.bodyMediumRobotoRed400)                                                                                                                                           
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(left: 6.h),                                                     
                                                            child: RichText(
                                                                text: TextSpan(
                                                                      children: [
                                                                      TextSpan(text: "msg_355_ratings2".tr,                                                                   
                                                                              style:
                                                                              CustomTextStyles.bodyMediumRobotoff736969),
                                                                      TextSpan(
                                                                          text: "200 rupees".tr,                                                                           
                                                                          style:
                                                                              CustomTextStyles.bodyMediumRobotoffef5b5b)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign.left
                                                                        ))
                                                      ]))
                                            ])))),
                      SizedBox(height: 15.h,),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapstRest();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 48.h, right: 53.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  height: 196.v,
                                                  width: 311.h,
                                                  child: Stack(
                                                      alignment:                                                         Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:ImageConstant.imgSumptous1,                                                                                                                              
                                                            height: 196.v,
                                                            width: 311.h,
                                                            radius: BorderRadius.circular(26.h),                                                               
                                                            alignment: Alignment.center),                                                               
                                                        CustomImageView(
                                                            imagePath: ImageConstant.imgImage151x105,                                                               
                                                            height: 51.v,
                                                            width: 105.h,
                                                            radius: BorderRadius.circular(25.h),                                                               
                                                            alignment: Alignment.bottomRight,                                                              
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right: 12.h))                                                                      
                                                      ])),
                                              SizedBox(height: 14.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 9.h),
                                                  child: Text(
                                                      "rest_name_2".tr,
                                                      style: theme.textTheme
                                                          .titleLarge)),
                                              SizedBox(height: 6.v),
                                              Container(
                                                  decoration: AppDecoration
                                                      .outlineBlack900011,
                                                  child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        SizedBox(
                                                            width: 31.h,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:ImageConstant.imgStar1,                                                                             
                                                                      height:12.v,                                                                         
                                                                      width:11.h,                                                                        
                                                                      margin: EdgeInsets.only(
                                                                          top: 2.v,                                                                            
                                                                          bottom:1.v)),                                                                             
                                                                  Text("lbl_4_9".tr,style: CustomTextStyles.bodyMediumRobotoRed400)                                                                                                                                           
                                                                ])),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(left: 6.h),                                                     
                                                            child: RichText(
                                                                text: TextSpan(
                                                                      children: [
                                                                      TextSpan(text: "msg_355_ratings2".tr,                                                                   
                                                                              style:
                                                                              CustomTextStyles.bodyMediumRobotoff736969),
                                                                      TextSpan(
                                                                          text: "250 rupees".tr,                                                                           
                                                                          style:
                                                                              CustomTextStyles.bodyMediumRobotoffef5b5b)
                                                                    ]),
                                                                textAlign:
                                                                    TextAlign.left
                                                                        ))
                                                      ]))
                                            ]))))
                      // Padding(
                      //     padding: EdgeInsets.only(left: 28.h),
                      //     child: Text("lbl_best_sellers".tr,
                      //         style: theme.textTheme.titleLarge)),
                      // SizedBox(height: 3.v),
                      // Padding(
                      //     padding: EdgeInsets.only(left: 28.h),
                      //     child: Row(children: [
                      //       SizedBox(
                      //           width: 30.h,
                      //           child: Row(
                      //               mainAxisAlignment:
                      //                   MainAxisAlignment.spaceBetween,
                      //               children: [
                      //                 CustomImageView(
                      //                     imagePath: ImageConstant.imgStar2,
                      //                     height: 12.v,
                      //                     width: 11.h,
                      //                     margin: EdgeInsets.only(top: 3.v)),
                      //                 Text("lbl_4_8".tr,
                      //                     style: CustomTextStyles
                      //                         .bodyMediumRobotoRed400)
                      //               ])),
                      //       Padding(
                      //           padding: EdgeInsets.only(left: 6.h),
                      //           child: RichText(
                      //               text: TextSpan(children: [
                      //                 TextSpan(
                      //                     text: "lbl".tr,
                      //                     style: CustomTextStyles
                      //                         .bodyMediumRobotoff736969),
                      //                 TextSpan(
                      //                     text: "lbl_105".tr,
                      //                     style: CustomTextStyles
                      //                         .bodyMediumRobotoff736969),
                      //                 TextSpan(
                      //                     text: "msg_ratings_starts".tr,
                      //                     style: CustomTextStyles
                      //                         .bodyMediumRobotoff736969),
                      //                 TextSpan(
                      //                     text: "lbl_2000".tr,
                      //                     style: CustomTextStyles
                      //                         .bodyMediumRobotoffef5b5b)
                      //               ]),
                      //               textAlign: TextAlign.left))
                      //     ])),
                      // SizedBox(height: 33.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
        
      // height: 67.v,
        leadingWidth: 48.h,
        centerTitle: true,
        title: Text("Houzee"), 
        backgroundColor: Color(0xFFFfE2F5DA)  ,
        //backgroundColor: Color(0xFFFF2C5B44),
        /* leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame13Black90001,
            margin: EdgeInsets.only(left: 21.h, bottom: 12.v),
            onTap: () {
              onTapImage();
            }),*/
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              onTapImage();
            }),
        // actions: [
        //   AppbarTrailingIconbutton(
        //       imagePath: ImageConstant.imgIconmonstrBasket1,
        //       margin: EdgeInsets.fromLTRB(29.h, 3.v, 29.h, 5.v))
        // ]
        );
  }

  /// Section Widget
  Widget _buildHomeSection() {
    return Container(
        margin: EdgeInsets.all(5),
        height: 150,
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
          color: Color(0xFFFF2C5B44),
          
          borderRadius: BorderRadius.circular(10),
        ),
        child: 
        Padding(
          padding: EdgeInsets.only(
              left: 80.h, top: 20.v, right: 87.h, bottom: 20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("lbl_happy_meal".tr,
                    style: CustomTextStyles
                        .headlineLargePrimaryContainer),
                SizedBox(height: 20.v),
                SizedBox(
                    width: 253.h,
                    child: Text(
                        "Homely food delivered to"
                            .tr,
                        maxLines: 1,
                        overflow:
                            TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .bodyLarge17),
                            ),
                SizedBox(height: 2.v),
                SizedBox(
                    width: 253.h,
                    child: Text(
                        "User Location"
                            .tr,
                        maxLines: 2,
                        overflow:
                            TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .bodyLarge17),
                            )                            
              ]))
        // Container(
        //     decoration: AppDecoration.fillPrimary,
        //     child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         mainAxisAlignment: MainAxisAlignment.end,
        //         children: [
        //           SizedBox(height: 268.v),
        //           CustomImageView(
        //               imagePath: ImageConstant.imgRectangle11,
        //               height: 57.v,
        //               width: 412.h,
        //               alignment: Alignment.centerLeft)
        //         ]))
        );
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  onTapImage() {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the restaurantPageScreen when the action is triggered.
  onTapstRest() {
    Get.toNamed(
      AppRoutes.restaurantPageScreen,
    );
  }
}
