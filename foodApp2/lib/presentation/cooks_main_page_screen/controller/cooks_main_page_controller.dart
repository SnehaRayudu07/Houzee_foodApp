import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/cooks_main_page_screen/models/cooks_main_page_model.dart';

/// A controller class for the CooksMainPageScreen.
///
/// This class manages the state of the CooksMainPageScreen, including the
/// current cooksMainPageModelObj
class CooksMainPageController extends GetxController {
  Rx<CooksMainPageModel> cooksMainPageModelObj = CooksMainPageModel().obs;
}
