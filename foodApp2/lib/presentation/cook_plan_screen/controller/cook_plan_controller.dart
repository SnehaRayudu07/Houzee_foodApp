import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/cook_plan_screen/models/cook_plan_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CookPlanScreen.
///
/// This class manages the state of the CookPlanScreen, including the
/// current cookPlanModelObj
class CookPlanController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<CookPlanModel> cookPlanModelObj = CookPlanModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
