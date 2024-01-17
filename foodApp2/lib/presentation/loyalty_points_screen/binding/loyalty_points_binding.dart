import '../controller/loyalty_points_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoyaltyPointsScreen.
///
/// This class ensures that the LoyaltyPointsController is created when the
/// LoyaltyPointsScreen is first loaded.
class LoyaltyPointsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoyaltyPointsController());
  }
}
