import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_barcartpage/custom_app_barcartpage_widget.dart';
import 'cartpage_widget.dart' show CartpageWidget;
import 'package:flutter/material.dart';

class CartpageModel extends FlutterFlowModel<CartpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomAppBarcartpage component.
  late CustomAppBarcartpageModel customAppBarcartpageModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarcartpageModel =
        createModel(context, () => CustomAppBarcartpageModel());
  }

  @override
  void dispose() {
    customAppBarcartpageModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
