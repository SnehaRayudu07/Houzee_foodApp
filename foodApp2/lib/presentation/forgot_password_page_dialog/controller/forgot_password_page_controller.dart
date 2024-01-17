import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/forgot_password_page_dialog/models/forgot_password_page_model.dart';
import 'package:flutter/material.dart';
import 'package:houzee/presentation/verification_page_dialog/verification_page_dialog.dart';
import 'package:houzee/presentation/verification_page_dialog/controller/verification_page_controller.dart';

/// A controller class for the ForgotPasswordPageDialog.
///
/// This class manages the state of the ForgotPasswordPageDialog, including the
/// current forgotPasswordPageModelObj
class ForgotPasswordPageController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPasswordPageModel> forgotPasswordPageModelObj =
      ForgotPasswordPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }

  @override
  void onReady() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: VerificationPageDialog(
        Get.put(
          VerificationPageController(),
        ),
      ),
    ));
  }
}
