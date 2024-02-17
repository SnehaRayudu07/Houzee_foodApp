import '/flutter_flow/flutter_flow_credit_card_form.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_barcheckout/custom_app_barcheckout_widget.dart';
import 'checkout_page_widget.dart' show CheckoutPageWidget;
import 'package:flutter/material.dart';

class CheckoutPageModel extends FlutterFlowModel<CheckoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CreditCardForm widget.
  final creditCardFormKey = GlobalKey<FormState>();
  CreditCardModel creditCardInfo = emptyCreditCard();
  // Model for CustomAppBarcheckout component.
  late CustomAppBarcheckoutModel customAppBarcheckoutModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarcheckoutModel =
        createModel(context, () => CustomAppBarcheckoutModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customAppBarcheckoutModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
