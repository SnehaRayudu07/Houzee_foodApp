import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/new_password_page_screen/models/new_password_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewPasswordPageScreen.
///
/// This class manages the state of the NewPasswordPageScreen, including the
/// current newPasswordPageModelObj
class NewPasswordPageController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  Rx<NewPasswordPageModel> newPasswordPageModelObj = NewPasswordPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    newpasswordController1.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
