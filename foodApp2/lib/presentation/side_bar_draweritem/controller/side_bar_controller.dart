import 'package:houzee/core/app_export.dart';
import 'package:houzee/presentation/side_bar_draweritem/models/side_bar_model.dart';

/// A controller class for the SideBarDraweritem.
///
/// This class manages the state of the SideBarDraweritem, including the
/// current sideBarModelObj
class SideBarController extends GetxController {
  Rx<SideBarModel> sideBarModelObj = SideBarModel().obs;
}
