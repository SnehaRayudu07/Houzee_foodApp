import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_comm/custom_app_bar_comm_widget.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'cooks_community_widget.dart' show CooksCommunityWidget;
import 'package:flutter/material.dart';

class CooksCommunityModel extends FlutterFlowModel<CooksCommunityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavigationBarUser component.
  late NavigationBarUserModel navigationBarUserModel;
  // Model for CustomAppBarComm component.
  late CustomAppBarCommModel customAppBarCommModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navigationBarUserModel =
        createModel(context, () => NavigationBarUserModel());
    customAppBarCommModel = createModel(context, () => CustomAppBarCommModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navigationBarUserModel.dispose();
    customAppBarCommModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
