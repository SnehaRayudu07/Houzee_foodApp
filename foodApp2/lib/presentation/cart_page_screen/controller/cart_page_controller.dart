import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/cart_page_screen/models/cart_page_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CartPageScreen.
///
/// This class manages the state of the CartPageScreen, including the
/// current cartPageModelObj
class CartPageController extends GetxController {
  TextEditingController voucherPlaceholderController = TextEditingController();

  Rx<CartPageModel> cartPageModelObj = CartPageModel().obs;

  @override
  void onClose() {
    super.onClose();
    voucherPlaceholderController.dispose();
  }
}
