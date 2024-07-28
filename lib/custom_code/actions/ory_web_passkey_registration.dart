// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:universal_html/js.dart' as js;

Future oryWebPasskeyRegistration(
  String email,
  String passkeyCreateData,
) async {
  // Add your function code here!
  js.context.callMethod("__oryPasskeyRegistration", [email, passkeyCreateData]);
}
