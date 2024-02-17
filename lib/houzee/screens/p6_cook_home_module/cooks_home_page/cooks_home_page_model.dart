import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_cooks_home/custom_app_bar_cooks_home_widget.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'cooks_home_page_widget.dart' show CooksHomePageWidget;
import 'package:flutter/material.dart';

class CooksHomePageModel extends FlutterFlowModel<CooksHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBarCooksHome component.
  late CustomAppBarCooksHomeModel customAppBarCooksHomeModel;
  // Model for NavigationBarUser component.
  late NavigationBarUserModel navigationBarUserModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarCooksHomeModel =
        createModel(context, () => CustomAppBarCooksHomeModel());
    navigationBarUserModel =
        createModel(context, () => NavigationBarUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppBarCooksHomeModel.dispose();
    navigationBarUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
