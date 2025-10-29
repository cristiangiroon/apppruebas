import '/flutter_flow/flutter_flow_util.dart';
import 'page_prueba_widget.dart' show PagePruebaWidget;
import 'package:flutter/material.dart';

class PagePruebaModel extends FlutterFlowModel<PagePruebaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextCodActivacion widget.
  FocusNode? textCodActivacionFocusNode;
  TextEditingController? textCodActivacionTextController;
  String? Function(BuildContext, String?)?
      textCodActivacionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textCodActivacionFocusNode?.dispose();
    textCodActivacionTextController?.dispose();
  }
}
