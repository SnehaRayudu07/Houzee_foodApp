import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/main_home_page_container1_screen/models/main_home_page_container1_model.dart';

/// A controller class for the MainHomePageContainer1Screen.
///
/// This class manages the state of the MainHomePageContainer1Screen, including the
/// current mainHomePageContainer1ModelObj
class MainHomePageContainer1Controller extends GetxController {
  Rx<MainHomePageContainer1Model> mainHomePageContainer1ModelObj =
      MainHomePageContainer1Model().obs;
}
