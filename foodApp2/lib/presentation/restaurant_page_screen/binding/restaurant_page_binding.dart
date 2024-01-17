import '../controller/restaurant_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RestaurantPageScreen.
///
/// This class ensures that the RestaurantPageController is created when the
/// RestaurantPageScreen is first loaded.
class RestaurantPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantPageController());
  }
}
