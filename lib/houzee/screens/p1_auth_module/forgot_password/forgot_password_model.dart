import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_barforgotpass/custom_app_barforgotpass_widget.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for forgotPasswor widget.
  late bool forgotPassworStatus;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // Model for CustomAppBarforgotpass component.
  late CustomAppBarforgotpassModel customAppBarforgotpassModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    forgotPassworStatus = true;
    customAppBarforgotpassModel =
        createModel(context, () => CustomAppBarforgotpassModel());
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    customAppBarforgotpassModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
