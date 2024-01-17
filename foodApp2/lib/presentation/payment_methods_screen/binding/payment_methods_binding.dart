import '../controller/payment_methods_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentMethodsScreen.
///
/// This class ensures that the PaymentMethodsController is created when the
/// PaymentMethodsScreen is first loaded.
class PaymentMethodsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentMethodsController());
  }
}
