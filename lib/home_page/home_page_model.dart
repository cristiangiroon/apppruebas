import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - newCustomAction] action in HomePage widget.
  String? resultadoLink;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Stores action output result for [Custom Action - caValidateInstalledApp] action in Button widget.
  bool? result;
  // Stores action output result for [Custom Action - caValidateInstalledApp] action in Button widget.
  bool? ios;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - caValidateInstalledApp] action in Button widget.
  bool? ios2;

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    listViewController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
