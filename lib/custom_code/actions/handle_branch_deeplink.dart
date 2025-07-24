// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter/services.dart';

//
StreamSubscription<Map>?
    _branchSubscription; // stream subscription that listens for branch links
final Set<String> _handledBranchLinks = {};

Future handleBranchDeeplink(
  Future Function(dynamic data)? onLinkOpened,
  Future Function(String? error)? onError,
) async {
  // Add your function code here!
  if (_branchSubscription != null) return; // If already listening, ignore link

  _branchSubscription = FlutterBranchSdk.listSession().listen(
    (data) async {
      final clicked = data['+clicked_branch_link'] == true;
      if (!clicked) return;

      final uniqueId = data['~referring_link'] ?? data['deeplink_path'] ?? '';

      if (_handledBranchLinks.contains(uniqueId)) return;
      _handledBranchLinks.add(uniqueId);

      await onLinkOpened!(Map<String, dynamic>.from(
          data)); // call action defined by user & pass the link data.
    },
    onError: (error) {
      if (error is PlatformException) {
        print('[Branch] PlatformException: ${error.code} - ${error.message}');
      } else {
        print('[Branch] Unknown error: $error');
      }
    },
  );
}
