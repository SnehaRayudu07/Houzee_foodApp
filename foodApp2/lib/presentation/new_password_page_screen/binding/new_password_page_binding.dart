import '../controller/new_password_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewPasswordPageScreen.
///
/// This class ensures that the NewPasswordPageController is created when the
/// NewPasswordPageScreen is first loaded.
class NewPasswordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPasswordPageController());
  }
}
