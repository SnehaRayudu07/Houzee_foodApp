import '../controller/android_large_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidLargeOneScreen.
///
/// This class ensures that the AndroidLargeOneController is created when the
/// AndroidLargeOneScreen is first loaded.
class AndroidLargeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidLargeOneController());
  }
}
