import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/main_home_page_container_page/models/main_home_page_container_model.dart';

/// A controller class for the MainHomePageContainerPage.
///
/// This class manages the state of the MainHomePageContainerPage, including the
/// current mainHomePageContainerModelObj
class MainHomePageContainerController extends GetxController {
  MainHomePageContainerController(this.mainHomePageContainerModelObj);

  Rx<MainHomePageContainerModel> mainHomePageContainerModelObj;
}
