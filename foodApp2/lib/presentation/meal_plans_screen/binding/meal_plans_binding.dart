import '../controller/meal_plans_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MealPlansScreen.
///
/// This class ensures that the MealPlansController is created when the
/// MealPlansScreen is first loaded.
class MealPlansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MealPlansController());
  }
}
