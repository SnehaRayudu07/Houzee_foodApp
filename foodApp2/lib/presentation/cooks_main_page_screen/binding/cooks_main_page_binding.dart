import '../controller/cooks_main_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CooksMainPageScreen.
///
/// This class ensures that the CooksMainPageController is created when the
/// CooksMainPageScreen is first loaded.
class CooksMainPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CooksMainPageController());
  }
}
