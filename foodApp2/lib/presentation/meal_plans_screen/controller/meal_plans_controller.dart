import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/meal_plans_screen/models/meal_plans_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MealPlansScreen.
///
/// This class manages the state of the MealPlansScreen, including the
/// current mealPlansModelObj
class MealPlansController extends GetxController {
  TextEditingController firstPlanController = TextEditingController();

  Rx<MealPlansModel> mealPlansModelObj = MealPlansModel().obs;

  @override
  void onClose() {
    super.onClose();
    firstPlanController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
