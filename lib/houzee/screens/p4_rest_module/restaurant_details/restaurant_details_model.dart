import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_restdetails/custom_app_bar_restdetails_widget.dart';
import 'restaurant_details_widget.dart' show RestaurantDetailsWidget;
import 'package:flutter/material.dart';

class RestaurantDetailsModel extends FlutterFlowModel<RestaurantDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBarRestdetails component.
  late CustomAppBarRestdetailsModel customAppBarRestdetailsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarRestdetailsModel =
        createModel(context, () => CustomAppBarRestdetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppBarRestdetailsModel.dispose();
  }

  /// Action blocks are added here.

  Future test1(BuildContext context) async {
    FFAppState().updateCartAtIndex(
      1,
      (e) => e..incrementQuantity(1.0),
    );
  }

  /// Additional helper methods are added here.
}
