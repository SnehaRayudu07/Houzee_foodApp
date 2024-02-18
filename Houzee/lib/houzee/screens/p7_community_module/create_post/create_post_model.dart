import '/flutter_flow/flutter_flow_util.dart';
import '/houzee/components/custom_app_bar_create_post/custom_app_bar_create_post_widget.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:flutter/material.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for CustomAppBarCreatePost component.
  late CustomAppBarCreatePostModel customAppBarCreatePostModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    customAppBarCreatePostModel =
        createModel(context, () => CustomAppBarCreatePostModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customAppBarCreatePostModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
