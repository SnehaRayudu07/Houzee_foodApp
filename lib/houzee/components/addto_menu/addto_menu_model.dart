import '/flutter_flow/flutter_flow_util.dart';
import 'addto_menu_widget.dart' show AddtoMenuWidget;
import 'package:flutter/material.dart';

class AddtoMenuModel extends FlutterFlowModel<AddtoMenuWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for itemName widget.
  FocusNode? itemNameFocusNode;
  TextEditingController? itemNameController;
  String? Function(BuildContext, String?)? itemNameControllerValidator;
  // State field(s) for itemPrice widget.
  FocusNode? itemPriceFocusNode;
  TextEditingController? itemPriceController;
  String? Function(BuildContext, String?)? itemPriceControllerValidator;
  // State field(s) for ItemDIsc widget.
  FocusNode? itemDIscFocusNode;
  TextEditingController? itemDIscController;
  String? Function(BuildContext, String?)? itemDIscControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    itemNameFocusNode?.dispose();
    itemNameController?.dispose();

    itemPriceFocusNode?.dispose();
    itemPriceController?.dispose();

    itemDIscFocusNode?.dispose();
    itemDIscController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
