// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> newCustomAction(dynamic data) async {
  // Add your function code here!
  String resultado = validateDeepLink(data);

  return resultado;
}

String validateDeepLink(dynamic data) {
  /// MODIFY CODE ONLY BELOW THIS LINE

  if (data is Map && data.containsKey('AdminMobileCode')) {
    String page = '';
    page = data['AdminMobileCode'];
    if (page.isNotEmpty) {
      return page;
    }
  }
  return '';

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
