import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/sign_up_two_dialog/models/sign_up_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpTwoDialog.
///
/// This class manages the state of the SignUpTwoDialog, including the
/// current signUpTwoModelObj
class SignUpTwoController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpTwoModel> signUpTwoModelObj = SignUpTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }
}
