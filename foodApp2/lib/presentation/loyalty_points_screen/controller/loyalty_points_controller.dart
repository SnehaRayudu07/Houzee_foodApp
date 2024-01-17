import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/loyalty_points_screen/models/loyalty_points_model.dart';

/// A controller class for the LoyaltyPointsScreen.
///
/// This class manages the state of the LoyaltyPointsScreen, including the
/// current loyaltyPointsModelObj
class LoyaltyPointsController extends GetxController {
  Rx<LoyaltyPointsModel> loyaltyPointsModelObj = LoyaltyPointsModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.mainHomePageContainer1Screen,
    );
  }
}
