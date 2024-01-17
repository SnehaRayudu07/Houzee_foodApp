import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/restaurant_page_screen/models/restaurant_page_model.dart';

/// A controller class for the RestaurantPageScreen.
///
/// This class manages the state of the RestaurantPageScreen, including the
/// current restaurantPageModelObj
class RestaurantPageController extends GetxController {
  Rx<RestaurantPageModel> restaurantPageModelObj = RestaurantPageModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.cartPageScreen,
    );
  }
}
