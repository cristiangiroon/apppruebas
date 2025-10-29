// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
import 'package:qr_bar_code_scanner_dialog_siesa/qr_bar_code_scanner_dialog_siesa.dart';

Future caScanQrWeb(
  BuildContext context,
  Future<dynamic> Function() refreshUI,
) async {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String subcadena = "Code scanned = ";

  // Verifica si la subcadena está presente y la elimina

  // Add your function code here!
  _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
      context: context,
      onCode: (code) {
        if (code != null) {
          if (code.startsWith(subcadena)) {
            code = code.replaceFirst(subcadena, "").trimLeft();
          }
          FFAppState().LsResultqrweb = code;
          refreshUI();
        } else {
          FFAppState().LsResultqrweb = "";
          refreshUI();
        }
      });
}
