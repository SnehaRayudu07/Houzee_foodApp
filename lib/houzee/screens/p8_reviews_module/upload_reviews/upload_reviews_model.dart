import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_review_order/custom_app_bar_review_order_widget.dart';
import 'upload_reviews_widget.dart' show UploadReviewsWidget;
import 'package:flutter/material.dart';

class UploadReviewsModel extends FlutterFlowModel<UploadReviewsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for CustomAppBarReviewOrder component.
  late CustomAppBarReviewOrderModel customAppBarReviewOrderModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarReviewOrderModel =
        createModel(context, () => CustomAppBarReviewOrderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customAppBarReviewOrderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
