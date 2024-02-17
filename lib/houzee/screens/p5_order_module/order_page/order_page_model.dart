import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_your_orders/custom_app_bar_your_orders_widget.dart';
import '/houzee/components/navigation_bar_user/navigation_bar_user_widget.dart';
import 'order_page_widget.dart' show OrderPageWidget;
import 'package:flutter/material.dart';

class OrderPageModel extends FlutterFlowModel<OrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CustomAppBarYourOrders component.
  late CustomAppBarYourOrdersModel customAppBarYourOrdersModel;
  // Model for NavigationBarUser component.
  late NavigationBarUserModel navigationBarUserModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarYourOrdersModel =
        createModel(context, () => CustomAppBarYourOrdersModel());
    navigationBarUserModel =
        createModel(context, () => NavigationBarUserModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppBarYourOrdersModel.dispose();
    navigationBarUserModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
