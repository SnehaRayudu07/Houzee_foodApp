import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_rest_reviews/custom_app_bar_rest_reviews_widget.dart';
import 'rest_reviews_widget.dart' show RestReviewsWidget;
import 'package:flutter/material.dart';

class RestReviewsModel extends FlutterFlowModel<RestReviewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CustomAppBarRestReviews component.
  late CustomAppBarRestReviewsModel customAppBarRestReviewsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarRestReviewsModel =
        createModel(context, () => CustomAppBarRestReviewsModel());
  }

  @override
  void dispose() {
    customAppBarRestReviewsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
