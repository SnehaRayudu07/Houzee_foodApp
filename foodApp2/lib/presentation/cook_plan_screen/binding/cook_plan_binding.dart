import '../controller/cook_plan_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CookPlanScreen.
///
/// This class ensures that the CookPlanController is created when the
/// CookPlanScreen is first loaded.
class CookPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CookPlanController());
  }
}
