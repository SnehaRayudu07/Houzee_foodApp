import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/payment_methods_screen/models/payment_methods_model.dart';

/// A controller class for the PaymentMethodsScreen.
///
/// This class manages the state of the PaymentMethodsScreen, including the
/// current paymentMethodsModelObj
class PaymentMethodsController extends GetxController {
  Rx<PaymentMethodsModel> paymentMethodsModelObj = PaymentMethodsModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }
}
