import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/checkout_page_screen/models/checkout_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CheckoutPageScreen.
///
/// This class manages the state of the CheckoutPageScreen, including the
/// current checkoutPageModelObj
class CheckoutPageController extends GetxController {
  TextEditingController houseNoController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController specialNotesController = TextEditingController();

  Rx<CheckoutPageModel> checkoutPageModelObj = CheckoutPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    houseNoController.dispose();
    nameController.dispose();
    cityController.dispose();
    phoneController.dispose();
    specialNotesController.dispose();
  }

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.cartPageScreen,
    );
    Get.toNamed(
      AppRoutes.paymentMethodsScreen,
    );
  }
}
