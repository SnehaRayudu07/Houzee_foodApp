import '../controller/checkout_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CheckoutPageScreen.
///
/// This class ensures that the CheckoutPageController is created when the
/// CheckoutPageScreen is first loaded.
class CheckoutPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CheckoutPageController());
  }
}
