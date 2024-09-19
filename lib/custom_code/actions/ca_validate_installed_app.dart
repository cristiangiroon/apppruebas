// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:appcheck/appcheck.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<bool> caValidateInstalledApp(String appName) async {
  var isInstalled = false;

  // Creamos la instancia de AppCheck
  final appCheck = AppCheck();

  // Usamos await para esperar la respuesta de la función asíncrona
  isInstalled = await appCheck.isAppInstalled(appName);

  return isInstalled;
}
