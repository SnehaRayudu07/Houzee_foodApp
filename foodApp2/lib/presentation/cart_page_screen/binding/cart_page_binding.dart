import '../controller/cart_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CartPageScreen.
///
/// This class ensures that the CartPageController is created when the
/// CartPageScreen is first loaded.
class CartPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartPageController());
  }
}
