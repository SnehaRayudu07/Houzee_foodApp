import '../controller/main_home_page_container1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MainHomePageContainer1Screen.
///
/// This class ensures that the MainHomePageContainer1Controller is created when the
/// MainHomePageContainer1Screen is first loaded.
class MainHomePageContainer1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainHomePageContainer1Controller());
  }
}
