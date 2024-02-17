import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'cook_auth_widget.dart' show CookAuthWidget;
import 'package:flutter/material.dart';

class CookAuthModel extends FlutterFlowModel<CookAuthWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameController;
  String? Function(BuildContext, String?)? usernameControllerValidator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Model for NavigationBarUser component.
  late NavigationBarUserModel navigationBarUserModel1;
  // Model for NavigationBarUser component.
  late NavigationBarUserModel navigationBarUserModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    navigationBarUserModel1 =
        createModel(context, () => NavigationBarUserModel());
    navigationBarUserModel2 =
        createModel(context, () => NavigationBarUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();

    navigationBarUserModel1.dispose();
    navigationBarUserModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
